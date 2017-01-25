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
    		sallowout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sallowin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pallowout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pallowin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Car Repairs")
		if (row["Account"].include? "Sonia")
    		srepairout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		srepairin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			prepairout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		prepairin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Rent")
		if (row["Account"].include? "Sonia")
    		srentout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		srentin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			prentout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		prentin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Entertainment")
		if (row["Account"].include? "Sonia")
    		sfunout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sfunin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pfunout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pfunin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Fuel")
		if (row["Account"].include? "Sonia")
    		sfuelout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sfuelin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pfuelout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pfuelin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Groceries")
		if (row["Account"].include? "Sonia")
    		sgrocerout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sgrocerin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pgrocerout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pgrocerin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Meals")
		if (row["Account"].include? "Sonia")
    		smealout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		smealin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pmealout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pmealin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Clothes")
		if (row["Account"].include? "Sonia")
    		sclothesout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sclothesin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pclothesout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pclothesin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Education")
		if (row["Account"].include? "Sonia")
    		seducateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		seducatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			peducateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		peducatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Donations")
		if (row["Account"].include? "Sonia")
    		sdonateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sdonatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pdonateout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pdonatein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Utilities")
		if (row["Account"].include? "Sonia")
    		sutilityout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sutilityin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			putilityout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		putilityin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Gifts")
		if (row["Account"].include? "Sonia")
    		sgiftout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sgiftin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pgiftout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pgiftin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Household Goods")
		if (row["Account"].include? "Sonia")
    		shouseout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		shousein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			phouseout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		phousein.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Gym")
		if (row["Account"].include? "Sonia")
    		sgymout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		sgymin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pgymout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pgymin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

	if (row["Category"].include? "Medical/Dental")
		if (row["Account"].include? "Sonia")
    		smedicalout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		smedicalin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
		end
		if (row["Account"].include? "Priya")
			pmedicalout.push(row["Outflow"].split("$").last().sub(/,/, '').to_f) if row["Outflow"].split("$").last().sub(/,/, '').to_f != 0.0
    		pmedicalin.push(row["Inflow"].split("$").last().sub(/,/, '').to_f) if row["Inflow"].split("$").last().sub(/,/, '').to_f != 0.0
    	end
	end

end

# sspending -= [0.0]
# #puts sspending

# sspending.each { |s| sspent += s}
# puts "Sonia spent total #{sspent}"

sallowtot = 0.0
sallowin.each { |t| sallowtot += t }
sallowout.each { |t| sallowtot -= t }

srepairtot = 0.0
srepairout.each { |t| srepairtot -= t }
srepairin.each { |t| srepairtot += t }

srenttot = 0.0
srentout.each { |t| srenttot -= t }
srentin.each { |t| srenttot += t }

sfuntot = 0.0
sfunout.each { |t| sfuntot -= t }
sfunin.each { |t| sfuntot += t }

sfueltot = 0.0
sfuelout.each { |t| sfueltot -= t }
sfuelin.each { |t| sfueltot += t }

sgrocertot = 0.0
sgrocerout.each { |t| sgrocertot -= t }
sgrocerin.each { |t| sgrocertot += t }

smealtot = 0.0
smealout.each { |t| smealtot -= t }
smealin.each { |t| smealtot += t }

sclothestot = 0.0
sclothesout.each { |t| sclothestot -= t }
sclothesin.each { |t| sclothestot += t }

seducatetot = 0.0
seducateout.each { |t| seducatetot -= t }
seducatein.each { |t| seducatetot += t }

sdonatetot = 0.0
sdonateout.each { |t| sdonatetot -= t }
sdonatein.each { |t| sdonatetot += t }

sutilitytot = 0.0
sutilityout.each { |t| sutilitytot -= t }
sutilityin.each { |t| sutilitytot += t }

sgifttot = 0.0
sgiftout.each { |t| sgifttot -= t }
sgiftin.each { |t| sgifttot += t }

shousetot = 0.0
shouseout.each { |t| shousetot -= t }
shousein.each { |t| shousetot += t }

sgymtot = 0.0
sgymout.each { |t| sgymtot -= t }
sgymin.each { |t| sgymtot += t }

smedicaltot = 0.0
smedicalout.each { |t| smedical -= t }
smedicalin.each { |t| smedical += t }




pallowtot = 0.0
pallowin.each { |t| pallowtot += t }
pallowout.each { |t| pallowtot -= t }

prepairtot = 0.0
prepairout.each { |t| prepairtot -= t }
prepairin.each { |t| prepairtot += t }

srenttot = 0.0
prentout.each { |t| prenttot -= t }
prentin.each { |t| prenttot += t }

pfuntot = 0.0
pfunout.each { |t| pfuntot -= t }
pfunin.each { |t| pfuntot += t }

pfueltot = 0.0
pfuelout.each { |t| pfueltot -= t }
pfuelin.each { |t| pfueltot += t }

pgrocertot = 0.0
pgrocerout.each { |t| pgrocertot -= t }
pgrocerin.each { |t| pgrocertot += t }

pmealtot = 0.0
pmealout.each { |t| pmealtot -= t }
pmealin.each { |t| pmealtot += t }

pclothestot = 0.0
pclothesout.each { |t| pclothestot -= t }
pclothesin.each { |t| pclothestot += t }

peducatetot = 0.0
peducateout.each { |t| peducatetot -= t }
peducatein.each { |t| peducatetot += t }

pdonatetot = 0.0
pdonateout.each { |t| pdonatetot -= t }
pdonatein.each { |t| pdonatetot += t }

putilitytot = 0.0
putilityout.each { |t| putilitytot -= t }
putilityin.each { |t| putilitytot += t }

pgifttot = 0.0
pgiftout.each { |t| pgifttot -= t }
pgiftin.each { |t| pgifttot += t }

phousetot = 0.0
phouseout.each { |t| phousetot -= t }
phousein.each { |t| phousetot += t }

pgymtot = 0.0
pgymout.each { |t| pgymtot -= t }
pgymin.each { |t| pgymtot += t }

pmedicaltot = 0.0
pmedicalout.each { |t| pmedical -= t }
pmedicalin.each { |t| pmedical += t }

# savspent = sspent / sspending.length

# puts "Sonia spent average #{savspent}"

# searning -= [0.0]
# #puts searning

# searning.each { |e| searned += e}
# puts "Sonia earned total #{searned}"

# savearned = searned / searning.length
# puts "Sonia earned average #{savearned}"

# pspending -= [0.0]
# #puts pspending

# pspending.each { |s| pspent += s}
# puts "Priya spent total #{pspent}"

# pavspent = pspent / pspending.length

# puts "Priya spent average #{pavspent}"

# pearning -= [0.0]
# #puts pearning

# pearning.each { |e| pearned += e}
# puts "Priya earned total #{pearned}"

# pavearned = pearned / pearning.length
# puts "Priya earned average #{pavearned}"

