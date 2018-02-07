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
  "hello in postcall"
  #{
   # "text": "My response"
  #}
  content_type :json
  { :key1 => 'hello', :key2 => 'testuser' }.to_json
  
end
get '/hello' do
	" hello"
end

