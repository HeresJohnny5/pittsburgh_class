require 'sinatra'
require_relative 'functions.rb'

enable :sessions

get '/' do
  erb :get_name
end

post '/get_name' do
  session[:user_name] = params[:user_name]
  erb :get_age, :locals => { :user_name => session[:user_name] }
end

post '/get_age' do
  session[:user_age] = params[:user_age].to_i
  erb :fav_nums, :locals => { :user_name => session[:user_name], :user_age => session[:user_age] }
end

post '/fav_nums' do
  session[:user_number1] = params[:user_number1].to_i
  session[:user_number2] = params[:user_number2].to_i
  session[:user_number3] = params[:user_number3].to_i

  fav_nums_total = sum(session[:user_number1], session[:user_number2], session[:user_number3])
  resulting_statement = difference(session[:user_age].to_i, fav_nums_total)

  erb :result, :locals => { :user_name => session[:user_name], :user_age => session[:user_age], :user_number1 => session[:user_number1], :user_number2 => session[:user_number2], :user_number3 => session[:user_number3], :fav_nums_total => fav_nums_total, :resulting_statement => resulting_statement }
end
