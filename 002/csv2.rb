require 'CSV'
require 'pry'

accounts = {}
#Priya = {total => 0.0, {}}
#Sonia = {total => 0.0, {}}
#category = {}

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|
    account = row["Account"].chomp

    if !accounts[account]
    	accounts[account] = { :total => 0.0, :category => {}}
    end

    current_account = accounts[account]

    current_category = row["Category"].chomp

    if !accounts[account][:category][current_category]
    	accounts[account][:category][current_category] = { :tally => 0.0, :num_of_transactions => 0, :avg_transaction => 0.0 }
#    	binding.pry
    end

inflow = row["Inflow"].gsub(/[,\$]/, '').to_f.round(2)

outflow = row["Outflow"].gsub(/[,\$]/, '').to_f.round(2)

amount = inflow - outflow

current_account[:category][current_category][:tally] += amount
current_account[:category][current_category][:num_of_transactions] += 1
current_account[:category][current_category][:avg_transaction] = current_account[:category][current_category][:tally] / current_account[:category][current_category][:num_of_transactions]

current_account[:total] += amount

binding.pry


end

#binding.pry

puts "Done"

