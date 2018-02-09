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
	h = request.params['text'].slice! request.params['trigger_word']
  content_type :json
  #{ :text => "#{request.content_type} \n  #{request.params.class} #{request.params['text']} #{request.params['trigger_word']}"}.to_json
  {text => "#{h}"}.to_json
end
get '/hello' do
	" hello"
end

