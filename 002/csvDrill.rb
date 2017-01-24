require 'csv'

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|
    puts row["Category"]
end
