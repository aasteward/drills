require 'csv'
total = []
t = 0.0

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|
    total.push(row["Outflow"].to_f)
end

puts total

