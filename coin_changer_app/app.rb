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
