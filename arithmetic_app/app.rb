require 'sinatra'
require_relative 'function.rb'

enable :sessions

get '/' do
  erb :user_input
end

post '/user_input' do
  math_operation = params[:math_operation]
  user_number1 = params[:user_number1].to_i
  user_number2 = params[:user_number2].to_i

  if math_operation == "addition"
    outcome = basic_addition(user_number1, user_number2)
  elsif math_operation == "subtraction"
    outcome = basic_subtraction(user_number1, user_number2)
  elsif math_operation == "multiplication"
    outcome = basic_multiplication(user_number1, user_number2)
  else
    outcome = basic_division(user_number1, user_number2)
  end

  erb :result, :locals => { :outcome => outcome }
end

get '/result' do
  erb :result
end
