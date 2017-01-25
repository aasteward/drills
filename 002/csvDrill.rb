require 'csv'
require 'pry'

sspending = []
searning = []
sspent = 0.0
searned = 0.0
savspend = 0.0
savearned = 0.0

sallowout = []
sallowin = []
srepairout = []
srepairin = []
srentout = []
srentin = []
sfunout = []
sfunin = []
sfuelout = []
sfuelin = []
sgrocerout = []
sgrocerin = []
smealout = []
smealin = []
sclothesout = []
sclothesin = []
seducateout = []
seducatein = []
sdonateout = []
sdonatein = []
sutilityout = []
sutilityin = []
sgiftout = []
sgiftin = []
shouseout = []
shousein = []
sgymout = []
sgymin = []
smedicalout = []
smedicalin = []

pspending = []
pearning = []
pspent = 0.0
pearned = 0.0
pavspend = 0.0
pavearned = 0.0

pallowout = []
pallowin = []
prepairout = []
prepairin = []
prentout = []
prentin = []
pfunout = []
pfunin = []
pfuelout = []
pfuelin = []
pgrocerout = []
pgrocerin = []
pmealout = []
pmealin = []
pclothesout = []
pclothesin = []
peducateout = []
peducatein = []
pdonateout = []
pdonatein = []
putilityout = []
putilityin = []
pgiftout = []
pgiftin = []
phouseout = []
phousein = []
pgymout = []
pgymin = []
pmedicalout = []
pmedicalin = []

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
    		srepairout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		srepairin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			prepairout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		prepairin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Rent")
		if (row["Account"].include? "Sonia")
    		srentout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		srentin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			prentout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		prentin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Entertainment")
		if (row["Account"].include? "Sonia")
    		sfunout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sfunin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pfunout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pfunin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Fuel")
		if (row["Account"].include? "Sonia")
    		sfuelout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sfuelin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pfuelout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pfuelin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Groceries")
		if (row["Account"].include? "Sonia")
    		sgrocerout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sgrocerin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pgrocerout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pgrocerin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Meals")
		if (row["Account"].include? "Sonia")
    		smealout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		smealin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pmealout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pmealin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Clothes")
		if (row["Account"].include? "Sonia")
    		sclothesout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sclothesin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pclothesout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pclothesin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Education")
		if (row["Account"].include? "Sonia")
    		seducateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		seducatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			peducateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		peducatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Donations")
		if (row["Account"].include? "Sonia")
    		sdonateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sdonatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pdonateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pdonatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Utilities")
		if (row["Account"].include? "Sonia")
    		sutilityout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sutilityin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			putilityout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		putilityin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Gifts")
		if (row["Account"].include? "Sonia")
    		sgiftout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sgiftin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pgiftout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pgiftin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Household Goods")
		if (row["Account"].include? "Sonia")
    		shouseout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		shousein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			phouseout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		phousein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Gym")
		if (row["Account"].include? "Sonia")
    		sgymout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		sgymin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pgymout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pgymin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
    	end
	end

	if (row["Category"].include? "Medical/Dental")
		if (row["Account"].include? "Sonia")
    		smedicalout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		smedicalin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
		end
		if (row["Account"].include? "Priya")
			pmedicalout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    		pmedicalin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
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
