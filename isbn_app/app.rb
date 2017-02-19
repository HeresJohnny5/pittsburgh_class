require 'sinatra'
require_relative 'function.rb'

enable :sessions

get '/' do
  erb :get_name
end

post '/get_name' do
  session[:user_name] = params[:user_name]

  erb :isbn, :locals => { :user_name => session[:user_name] }
end

post '/get_isbn' do
  session[:isbn] = params[:isbn]

  outcome = valid_isbn?(session[:isbn])
  erb :result, :locals => { :user_name => session[:user_name], :isbn => session[:isbn], :outcome => outcome }
end
