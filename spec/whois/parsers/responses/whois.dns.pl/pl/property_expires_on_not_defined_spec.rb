# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.pl/pl/property_expires_on_not_defined.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.dns.pl", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.dns.pl/pl/property_expires_on_not_defined.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.dns.pl")
    Whois::Parser.parser_for(part)
  end

  it "matches property_expires_on_not_defined.expected" do
    expect(subject.expires_on).to eq(nil)
  end
end
