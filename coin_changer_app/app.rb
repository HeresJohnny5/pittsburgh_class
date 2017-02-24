require_relative 'function.rb'
require 'sinatra'

get '/' do
  erb :name
end
