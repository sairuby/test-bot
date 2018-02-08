require 'bundler/setup'
require 'rubygems'
require 'sinatra'
require 'json'
require 'logger'
require 'yaml'
require 'fileutils'
require 'pry'


post '/testcall' do
  puts " hello in post call"
  #"hello in postcall"
  #{
   # "text": "My response"
  #
	binding.pry
	"#{session.inspect}
		
  content_type :json
  { :text => 'hello'}.to_json
  
end
get '/hello' do
	" hello"
end

