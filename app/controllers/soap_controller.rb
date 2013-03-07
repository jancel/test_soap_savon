class SoapController < ApplicationController
  include WashOut::SOAP
  
  soap_action "echo",
    :args => :string,
    :return => :string
  def echo
    render :soap => params[:value]
  end
end

# Usage
# >> @client = Savon::Client.new(wsdl: "http://localhost:3000/soap/wsdl")
# => #<Savon::Client:0x007faa034d0fa8 @globals=#<Savon::GlobalOptions:0x007faa034d0f80 @options={:encoding=>"UTF-8", :soap_version=>1, :namespaces=>{}, :logger=>#<Logger:0x007faa034d0f08 @progname=nil, @level=0, @default_formatter=#<Logger::Formatter:0x007faa034d0eb8 @datetime_format=nil>, @formatter=#<Logger::SimpleFormatter:0x007faa034d0dc8 @datetime_format=nil>, @logdev=#<Logger::LogDevice:0x007faa034d0e68 @shift_size=nil, @shift_age=nil, @filename=nil, @dev=#<IO:<STDOUT>>, @mutex=#<Logger::LogDevice::LogDeviceMutex:0x007faa034d0e40 @mon_owner=nil, @mon_count=0, @mon_mutex=#<Mutex:0x007faa034d0df0>>>>, :log=>true, :filters=>[], :pretty_print_xml=>false, :raise_errors=>true, :strip_namespaces=>true, :convert_response_tags_to=>#<Proc:0x007faa034d0d50@/Users/jancel/.rvm/gems/ruby-1.9.3-p392@test_soap_savon/gems/savon-2.1.0/lib/savon/options.rb:48 (lambda)>, :wsdl=>"http://localhost:3000/soap/wsdl"}>, @wsdl=#<Wasabi::Document:0x007faa034d0a80 @document="http://localhost:3000/soap/wsdl", @request=#<HTTPI::Request:0x007faa034d0a30>>>
# >> @client.operations
# HTTPI GET request to localhost (net_http)
# => [:echo]
# >>