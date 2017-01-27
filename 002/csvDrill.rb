require 'CSV'
require 'pry'

accounts = {}
holder = []

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|
    account = row["Account"].chomp

# CREATES AND TRACKS NEW ACCOUNTS

    if !accounts[account]
    	accounts[account] = { :total => 0.0, :category => {}}
    end

    current_account = accounts[account]

    current_category = row["Category"].chomp

# CREATES ENTRIES FOR TYPES OF TRANSACTIONS

    if !accounts[account][:category][current_category]
    	accounts[account][:category][current_category] = { :tally => 0.0, :num_of_transactions => 0, :avg_transaction => 0.0 }
    end

# CALCULATES TRANSACTION AMOUNTS AND AVERAGES

inflow = row["Inflow"].gsub(/[,\$]/, '').to_f.round(2)
outflow = row["Outflow"].gsub(/[,\$]/, '').to_f.round(2)
amount = inflow - outflow

current_account[:category][current_category][:tally] += amount
current_account[:category][current_category][:num_of_transactions] += 1
current_account[:category][current_category][:avg_transaction] = current_account[:category][current_category][:tally] / current_account[:category][current_category][:num_of_transactions]

# CALCULATES ACCOUNT BALANCE

current_account[:total] += amount

end

# BUILDS ARRAY TO SORT BY ACCOUNT NAME

accounts.each { |key, value| holder.push(key.to_s) }

# FILTERS ACCOUNTS TO BE DISPLAYED

if holder.include?(ARGV[0].to_s)
	accounts.delete_if { |key, value| key != ARGV[0].to_s }
end

# CREATES ASCII DISPLAY

if ARGV[1].to_s == '' and ARGV[0] != "html" and ARGV[0] != "csv" or ARGV[1] == "ascii"
	accounts.each do |name, balance|
		puts "\n"
		puts "==============================================================="
		puts "  #{name}: 		Balance: \$#{balance[:total].round(2)}"
		puts "==============================================================="
		puts "| Category 		| Amount 	| Average Transaction |"
		puts "| --------------------- | ------------- | ------------------- |"
		balance[:category].each do |category, t|
    		print "| #{category.ljust(21)} | \$#{t[:tally].round(2).to_s.ljust(12)} | \$#{t[:avg_transaction].round(2).to_s.ljust(18)} |\n"
		end
		puts "\n"
	end
end

# CREATES HTML DISPLAY

if ARGV[0] == "html" or ARGV[1].to_s == "html"
	accounts.each do |name, balance|
		puts "\n"
		puts "<h1>#{name}</h1>"
		puts "<p>\$#{balance[:total].round(2)}</p>"
		puts "<hr>"
		puts "<table>"
		puts "	<tr>"
		puts "		<th>Category</th>"
		puts "		<th>Amount</th>"
		puts "		<th>Average Transaction</th>"
		puts "	</tr>"
		balance[:category].each do |category, t|
			puts "	<tr>"
			puts "		<td>#{category}</td>"
			puts "		<td>\$#{t[:tally].round(2).to_s}</td>"
			puts "		<td>\$#{t[:avg_transaction].round(2).to_s}</td>"
		end
		puts "\n"
	end
end

# CREATES CSV DISPLAY

if ARGV[0] == "csv" or ARGV[1].to_s == "csv"
	accounts.each do |name, balance|
		puts "\n"
		puts "Category,Amount,Averge Transaction"
		balance[:category].each do |category, t|
			puts "#{category},\$#{t[:tally].round(2).to_s},\$#{t[:avg_transaction].round(2).to_s}"
		end
		puts "\n"
	end
end


