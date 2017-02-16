require 'sinatra'
require_relative 'random_pairs_example2.rb'

enable :sessions

get '/' do
  erb :get_names
end

post '/get_names' do
  user_name1 = params[:user_name1]
  user_name2 = params[:user_name2]
  user_name3 = params[:user_name3]
  user_name4 = params[:user_name4]
  user_name5 = params[:user_name5]
  user_name6 = params[:user_name6]
  user_name7 = params[:user_name7]
  user_name8 = params[:user_name8]
  user_name9 = params[:user_name9]
  user_name10 = params[:user_name10]
  user_name11 = params[:user_name11]
  user_name12 = params[:user_name12]
  user_name13 = params[:user_name13]
  user_name14 = params[:user_name14]
  user_name15 = params[:user_name15]
  user_name16 = params[:user_name16]
  user_name17 = params[:user_name17]
  user_name18 = params[:user_name18]
  user_name19 = params[:user_name19]
  user_name20 = params[:user_name20]

  names_array = [user_name1, user_name2, user_name3, user_name4, user_name5, user_name6, user_name7, user_name8, user_name9, user_name10, user_name11, user_name12, user_name13, user_name14, user_name15, user_name16, user_name17, user_name18, user_name19, user_name20]

  names_array.delete("")

  outcome = random_pairing(names_array)

  erb :result, :locals => { :outcome => outcome }
end

get '/result' do
  erb :result
end
