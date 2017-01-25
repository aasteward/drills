require 'csv'
require 'pry'

sspending = []
searning = []
sspent = 0.0
searned = 0.0
savspend = 0.0
savearned = 0.0

pspending = []
pearning = []
pspent = 0.0
pearned = 0.0
pavspend = 0.0
pavearned = 0.0

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|

	if (row["Category"].include? "Allowance")
		if (row["Account"].include? "Sonia")
    		sallowout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sallowin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pallowout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pallowin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Car Repairs")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Rent")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Entertainment")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Fuel")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Groceries")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Meals")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Clothes")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Education")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Donations")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Utilities")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Gifts")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Household Goods")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Groceries")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Gym")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Medical/Dental")
		if (row["Account"].include? "Sonia")
    		sspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		searning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pspending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pearning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

#    binding.pry

end

sspending -= [0.0]
#puts sspending

sspending.each { |s| sspent += s}
puts "Sonia spent total #{sspent}"

savspent = sspent / sspending.length

puts "Sonia spent average #{savspent}"

searning -= [0.0]
#puts searning

searning.each { |e| searned += e}
puts "Sonia earned total #{searned}"

savearned = searned / searning.length
puts "Sonia earned average #{savearned}"

pspending -= [0.0]
#puts pspending

pspending.each { |s| pspent += s}
puts "Priya spent total #{pspent}"

pavspent = pspent / pspending.length

puts "Priya spent average #{pavspent}"

pearning -= [0.0]
#puts pearning

pearning.each { |e| pearned += e}
puts "Priya earned total #{pearned}"

pavearned = pearned / pearning.length
puts "Priya earned average #{pavearned}"
