require_relative 'function.rb'
require 'sinatra'

enable :sessions

get '/' do
  erb :get_name
end

post '/get_name' do
  session[:user_name] = params[:user_name]

  erb :get_money, :locals => { :user_name => session[:user_name] }
end

post '/get_money' do
  session[:user_money] = params[:user_money].to_i
  change = coin_changer(session[:user_money])

  reverse_coin = change.to_a.reverse
  high_to_low = reverse_coin.to_h

  erb :result, :locals => { :user_name => session[:user_name], :user_money => session[:user_money], :change => change, :high_to_low => high_to_low }
end
