require 'sinatra'
require_relative 'function.rb'

enable :sessions

get '/' do
  erb :get_number
end

post '/get_number' do
  user_number = params[:user_number].to_i
  algorithm = Algorithm.new
  outcome = algorithm.fizz_buzz(user_number)

  erb :result, :locals => { :user_number => user_number, :outcome => outcome }
end

get '/result' do
  erb :result
end