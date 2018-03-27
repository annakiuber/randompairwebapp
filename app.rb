require "sinatra"
require_relative "random_pairing_function.rb"

enable :sessions

get "/" do
	session[:name_array] = Array.new
	erb :page_1
end

post "/inputnames" do
	session[:name_array].push params[:new_name]
	puts "session[:name_array] is #{session[:name_array]}"
	redirect '/addmorenames'
end

get "/addmorenames" do
	erb :page_2, locals:{name_list:session[:name_array]}
end

post '/make_pairs' do
puts "params[:name_array2] is #{params[:name_array2]}"
  session[:paired_names] = annas_pairing_app(session[:name_array])
	puts "paired_names is #{session[:paired_names].class}"
	redirect"/pairdnamespage"
end

get '/pairdnamespage' do
  session[:paired_names]
erb :page_3, locals:{names_list:session[:paired_names]}
end

post '/endpage' do
  params[:array_of_names_to_pair]
	puts "paired_names is #{session[:paired_names]}"
end
