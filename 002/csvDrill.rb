require 'csv'
require 'pry'

spending = []
earning = []
spent = 0.0
earned = 0.0
avspend = 0.0
avearned = 0.0

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|
    spending.push(row["Outflow"].split("$").last().sub(/,/, '').to_f)
    earning.push(row["Inflow"].split("$").last().sub(/,/, '').to_f)
#    binding.pry

end

spending -= [0.0]
puts spending

spending.each { |s| spent += s}
puts spent

avspent = spent / spending.length

puts avspent

puts earning

earning.each { |e| earned += e}
puts earned



