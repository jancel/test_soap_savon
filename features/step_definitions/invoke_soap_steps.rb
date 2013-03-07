Given(/^I have a wsdl location$/) do
  @wsdl_location = "http://example.com/soap/wsdl"
end

Given(/^I have created a Savon client$/) do
  @client = Savon::Client.new(wsdl: @wsdl_location)
end

Then(/^I should have (\d+) operation$/) do |arg1|
  @client.operations.count.should eql 1
end