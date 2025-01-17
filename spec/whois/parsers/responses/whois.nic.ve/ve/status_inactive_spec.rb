# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.ve/ve/status_inactive.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.ve", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.ve/ve/status_inactive.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.ve")
    Whois::Parser.parser_for(part)
  end

  it "matches status_inactive.expected" do
    expect(subject.status).to eq(:inactive)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2005-11-21 15:21:32"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2006-06-08 21:54:41"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2010-11-21 15:21:32"))
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns10.tepuyserver.net")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns9.tepuyserver.net")
  end
end
