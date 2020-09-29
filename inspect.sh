#!/usr/bin/env ruby
require "bundler/setup"
require "httpclient"
require "newrelic_rpm"

uri=URI("https://www.exemple.com?params=value")
request = HTTP::Message.new_request("GET", uri, nil, nil, nil)
puts "GOOD #{request.header.request_uri}"
wrapped_request = NewRelic::Agent::HTTPClients::HTTPClientRequest.new(request)
puts "GOOD #{wrapped_request.uri}"


uri = wrapped_request.uri # OK 
segment = NewRelic::Agent::Transaction::ExternalRequestSegment.new HTTPClient, uri, "GET"
puts "BAD URL #{uri}"

