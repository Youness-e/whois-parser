# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.google/page/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.google", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.google/page/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.google")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("google.page")
    expect(subject.domain_id).to eq("2D55CC686-PAGE")
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2018-08-13T21:29:41Z"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2019-08-13T21:29:41Z"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("9998")
    expect(subject.registrar.name).to eq("Charleston Road Registry Billable")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].organization).to eq("Charleston Road Registry, Inc.")
    expect(subject.registrant_contacts[0].state).to eq("CA")
    expect(subject.registrant_contacts[0].country_code).to eq("US")
  end
end
