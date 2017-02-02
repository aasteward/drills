require "sinatra"
require_relative './functions.rb'
require "pry"
require "csv"

def display(name)
	account = AccountInfo.new
	account.set_up_initial_values
	account.build_report(account, name)
	return account

end

def write_info(new_info)
	info = File.open("/Users/aasteward/Code/drills/007/accounts.csv", "a")
	info.puts new_info
	info.close
end

# LOGIN PAGE TO BE ADDED SOON
# get ("/"){
# 	erb :login
# }

post("/submit") {
	new_info = params["data"]
	write_info(new_info)
	redirect("/report?name=xxxx")
}

get("/index") {
	erb :index
}

get("/report") {
	@name = params["name"]
	@account = display(@name)
	erb :report
}

get("/full") {
	@names = ["Sonia", "Priya"]
	@all_accounts = []
	@names.each do |account|
		@all_accounts.push(display(account))
	end
	erb :full
}
