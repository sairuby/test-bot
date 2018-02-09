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
	a = request.params['text']
	b = request.params['trigger_word']
	h = a.slice! b
	"#{h}"
	puts "#{h}"
  content_type :json
  #{ :text => "#{request.content_type} \n  #{request.params.class} #{request.params['text']} #{request.params['trigger_word']}"}.to_json
  {:text => "#{h}"}.to_json
end
get '/hello' do
	" hello"
end

