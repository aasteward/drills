require "sinatra"
require "pry"

get "/" do
    erb :home
end

get "/people" do
    erb :info
end