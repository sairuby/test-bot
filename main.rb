require 'bundler/setup'
require 'rubygems'
require 'sinatra'
require 'json'
require 'logger'
require 'yaml'
require 'fileutils'
require 'pry'


post '/testcall' do
	#request_data = JSON.parse(request.body.read)
	
 # puts " hello in post call"
  #"hello in postcall"
  #{
   # "text": "My response"
  #
	#binding.pry
	#"#{session.inspect}
	h = "hello"	
  content_type :json
  { :text => "#{h}"}.to_json
  
end
get '/hello' do
	" hello"
end

