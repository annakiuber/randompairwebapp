require "sinatra"
require_relative "random_pairing_function.rb"

enable :sessions

get "/" do 
	erb :page_1
end

post "/inputnames" do 
	session[:names] = params[:names]
	redirect '/names'
end

get "/names" do
	num1 = session[:num1]
	erb :page_2, locals:{names:names}
end