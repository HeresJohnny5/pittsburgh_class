require 'sinatra'
require_relative 'functions.rb'

# enable :sessions

get '/' do
  erb :get_name
end

post '/get_name' do
  user_name = params[:user_name]
  erb :get_age, :locals => { :user_name => user_name }
end

get '/get_age' do
  erb :get_age
end
