#!/usr/bin/env ruby
require "bundler/setup"
require "httpclient"
url = "https://www.coliposte.fr/tracking-chargeur-cxf/TrackingServiceWS?wsdl"

uri = URI(url)
r=HTTPClient.get uri
puts r.status_code # return 200 => Ok
puts "uri #{uri} IS original uri #{url}"
