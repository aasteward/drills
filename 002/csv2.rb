require 'CSV'
require 'pry'

spending = []
earning = []
spent = 0.0
earned = 0.0
avspend = 0.0
avearned = 0.0

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|
    if (row["Account"].include? "Sonia")
    	puts row["Account"]
   	    spending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
	    earning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)

    end

end

puts spending
puts earning
