require "sinatra"
require_relative './functions.rb'
require "pry"
require "csv"

def display(n, t)
	n.set_up_initial_values
	n.build_report(n, t)

	@name = t
	@balance = n.pretty_tally
end

get ("/"){
	erb :index
}

get("/sonia") {
	@sonia = AccountInfo.new
	display(@sonia, "Sonia")
	erb :sonia
}


get("/priya") {
	@priya = AccountInfo.new
	display(@priya, "Priya")
	erb :priya
}

get("/full") {
	@sonia = AccountInfo.new
	@sonia.set_up_initial_values
	@sonia.build_report(@sonia, "Sonia")

	@name1 = "Sonia"
	@balance1 = @sonia.pretty_tally
	
	@priya = AccountInfo.new
	@priya.set_up_initial_values
	@priya.build_report(@priya, "Priya")

	@name2 = "Priya"
	@balance2 = @priya.pretty_tally

	erb :full
}
