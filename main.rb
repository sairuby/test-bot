require 'bundler/setup'
require 'rubygems'
require 'sinatra'
require 'json'
require 'logger'
require 'yaml'
require 'fileutils'
require 'pry'
require 'uri'
require 'net/http'


post '/testcall' do
	#binding.pry
	#a = request.params['text']
	#b = request.params['trigger_word']
	#h = a.slice! b
     
	url = URI("https://geapplight.service-now.com/api/now/v1/table/cmdb_ci_service?sysparm_query=name%3DNPI&sysparm_fields=u_technical_contact_sso_1&displayvalue=true")

	http = Net::HTTP.new(url.host, url.port)
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(url)
request["authorization"] = 'Basic NTAyNDEyMjMyOlMzcnZpYzNuMHc='
request["cache-control"] = 'no-cache'
request["postman-token"] = 'e5389d56-52fc-1e23-50e7-8b4f215ff28f'

response = http.request(request)
puts response.read_body
	data1 = JSON.parse(response.read_body)
	data2 = "hello"
  	content_type :json
   	{:text => "#{data2}"}.to_json
end
get '/hello' do
	" hello"
end

