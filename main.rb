require 'bundler/setup'
require 'rubygems'
require 'sinatra'
require 'json'
require 'logger'
require 'yaml'
require 'fileutils'
require 'pry'


post '/wikepedia' do
puts " hello in post call"
	"hello in postcall"
end
get '/hello' do
	" hello"
end


# Slack.configure do |config|
#   config.token = "xoxb-309560904657-OOuZw7YL08EtPa8E82WdewCG"
# end


# require 'slack-ruby-client'

# Slack.configure do |config|
#   config.token = "xoxb-309560904657-OOuZw7YL08EtPa8E82WdewCG"
#   raise 'Missing ENV[SLACK_API_TOKEN]!' unless config.token
# end

# client = Slack::Web::Client.new

# client.auth_test

# client.chat_postMessage(channel: '#general', text: 'Hello World', as_user: true)
