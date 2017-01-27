require "CSV"
require "pry"

accounts = {}
filter = ARGV

# BUILD ACCOUNT CLASS WITH OPERATIONS

class Account
	def initialize
		@total = 0.0
		@categories = {}
	end
	def balance
		@total += amount
	end
	def add_category
		@categories[category] = Category.new
		@categories[category] = initialize
	end
	def existing_category(category)
		return @categories[category] != nil
	end
	def category(category)
		return @categories[category]
	end
	def categories
		return @categories
	end
end

# BUILD CATEGORY CLASS WITH OPERATIONS

class Category
	def initialize
		@tally = 0.0
		@num_of_transactions = 0
		@avg_transaction = @tally / @num_of_transactions
	end
	def track(amount)
		@tally += amount
	end
	def tally
		@tally.round(2).to_s
	end
	def average
		@avg_transactions.round(2).to_s
	end
end

# BUILD INFLOW/OUTFLOW CLASSES
# MAYBE MERGE TO SINGLE CLASS

class Outflow
	def value(amount)
		@value = amount.gsub(/[,\$]/, '').to_f.round(2)
	end
	def to_f
		return @value
	end
end

class Inflow
	def value(amount)
		@value = amount.gsub(/[,\$]/, '').to_f.round(2)
	end
	def to_f
		return @value
	end
end

# SEARCH CSV FOR DATA

CSV.foreach("accounts.csv", {headers: true, return_headers: false}) do |row|

	# CREATES NEW ACCOUNTS

    account = row["Account"].chomp
    if !accounts[account]
    	accounts[account] = Account.new.initialize
    end

    if !accounts[account].existing_category
    	accounts[account].add_category

    inflow = Inflow.new.value(row["Inflow"]).to_f
    outflow = Outflow.new.value(row["Outflow"]).to_f
    amount = inflow - outflow
    # ^ CAN BE MERGED?


# QUICK ATTEMPT AT DIRECT TEMPLATE CONVERSTION TO FUNCTIONS

# def new_accounts(names)
# 	account = row["Account"].chomp
# 	if !accounts[account]
#     	accounts[account] = { :total => 0.0, :category => {}}
#     end
#     current_account = accounts[account]
# end

# def categories(types)
# 	current_category = row["Category"].chomp
# 	if !accounts[account][:category][current_category]
#     	accounts[account][:category][current_category] = { :tally => 0.0, :num_of_transactions => 0, :avg_transaction => 0.0 }
#     end
# end

# def transaction(amount)
# 	inflow = row["Inflow"].gsub(/[,\$]/, '').to_f.round(2)
# 	outflow = row["Outflow"].gsub(/[,\$]/, '').to_f.round(2)
# 	amount = inflow - outflow
# end

# def tracker(books)
# 	current_account[:category][current_category][:tally] += amount
# 	current_account[:category][current_category][:num_of_transactions] += 1
# 	current_account[:category][current_category][:avg_transaction] = current_account[:category][current_category][:tally] / current_account[:category][current_category][:num_of_transactions]
# end

# def update_balance(total)
# 	current_account[:total] += amount
# end

