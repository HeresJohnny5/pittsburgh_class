require 'sinatra'
require_relative 'functions.rb'

get '/' do
  erb :get_name
end

post '/get_name' do
  user_name = params[:user_name]
  erb :get_age, :locals => { :user_name => user_name }
end

post '/get_age' do
  user_name = params[:user_name]
  user_age = params[:user_age]
  erb :fav_nums, :locals => { :user_name => user_name, :user_age => user_age }
end

post '/fav_nums' do
  user_name = params[:user_name]
  user_age = params[:user_age].to_i
  user_number1 = params[:user_number1].to_i
  user_number2 = params[:user_number2].to_i
  user_number3 = params[:user_number3].to_i

  fav_nums_total = sum(user_number1, user_number2, user_number3)
  resulting_statement = difference(user_age, fav_nums_total)

  erb :result, :locals => { :user_name => user_name, :user_age => user_age, :user_number1 => user_number1, :user_number2 => user_number2, :user_number3 => user_number3, :fav_nums_total => fav_nums_total, :resulting_statement => resulting_statement }
end
