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

get ("/"){
	erb :index
}

get("/sonia") {
	@name = "Sonia"
	@account = display(@name)
	erb :sonia
}

get("/priya") {
	@name = "Priya"
	@account = display(@name)
	erb :priya
}

get("/full") {
	@names = ["Sonia", "Priya"]
	@all_accounts = []
	@names.each do |account|
		@all_accounts.push(display(account))
	end
	erb :full
}
