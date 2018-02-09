require 'bundler/setup'
require 'rubygems'
require 'sinatra'
require 'json'
require 'logger'
require 'yaml'
require 'fileutils'
require 'pry'


post '/testcall' do
	#binding.pry
	#request.body.read
	#puts " hello"
 # puts " hello in post call"
  #"hello in postcall"
  #{
   # "text": "My response"
  #
	#binding.pry
	#"#{session.inspect}
	h = "hello"	
  content_type :json
  { :text => "#{request.content_type} \n  #{request.params} #{request.cookies}"}.to_json
  
end
get '/hello' do
	" hello"
end

