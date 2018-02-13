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
	binding.pry
	a = request.params['text']
	b = request.params['trigger_word']
	h = a.slice! b
     
	url = URI("https://geapplight.service-now.com/api/now/v1/table/cmdb_ci_service?sysparm_query=name=NPI&sysparm_fields=u_technical_contact_sso_1&displayvalue=true")

	http = Net::HTTP.new(url.host, url.port)

	request = Net::HTTP::Get.new(url)
	request["Authorization"] = 'Basic NTAyNDEyMjMyOlMzcnZpYzNuMHc='
	response = http.request(request)
	data1 = response.read_body
	#url1 = "https://geapplight.service-now.com/api/now/v1/table/cmdb_ci_service?sysparm_query=name=#{a}&sysparm_fields=u_technical_contact_sso_1&displayvalue=true"
	#uri = URI(a)
	#http.use_ssl = true
    	#http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	

	
	#"#{h}"
	#puts "#{h}"
  content_type :json
  #{ :text => "#{request.content_type} \n  #{request.params.class} #{request.params['text']} #{request.params['trigger_word']}"}.to_json
  {:text => "#{data1}"}.to_json
end
get '/hello' do
	" hello"
end

