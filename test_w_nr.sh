#!/usr/bin/env ruby
require "bundler/setup"
require "httpclient"
require "newrelic_rpm"

url = "https://www.coliposte.fr/tracking-chargeur-cxf/TrackingServiceWS?wsdl"

uri = URI(url)
r=HTTPClient.get uri
puts "#{r.status_code} != 200"
puts "uri #{uri} is not the original uri #{url}"
