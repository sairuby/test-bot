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
end
get '/hello' do
	" hello"
end

