# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.tel/tel/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.nic.tel", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.nic.tel/tel/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.nic.tel")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("google.tel")
    expect(subject.domain_id).to eq("D587349-TEL")
    expect(subject.status).to eq(["clientDeleteProhibited", "clientTransferProhibited", "clientUpdateProhibited"])
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2009-03-23 23:59:59 GMT"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2013-02-19 10:23:33 GMT"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2014-03-22 23:59:59 GMT"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("292")
    expect(subject.registrar.name).to eq("MARKMONITOR, INC.")
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("MMR-2383")
    expect(subject.registrant_contacts[0].name).to eq("DNS Admin")
    expect(subject.registrant_contacts[0].organization).to eq("Google Inc.")
    expect(subject.registrant_contacts[0].address).to eq("1600 Amphitheatre Parkway")
    expect(subject.registrant_contacts[0].city).to eq("Mountain View")
    expect(subject.registrant_contacts[0].zip).to eq("94043")
    expect(subject.registrant_contacts[0].state).to eq("CA")
    expect(subject.registrant_contacts[0].country).to eq("United States")
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq("+1.6502530000")
    expect(subject.registrant_contacts[0].fax).to eq("+1.6506188571")
    expect(subject.registrant_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("MMR-2383")
    expect(subject.admin_contacts[0].name).to eq("DNS Admin")
    expect(subject.admin_contacts[0].organization).to eq("Google Inc.")
    expect(subject.admin_contacts[0].address).to eq("1600 Amphitheatre Parkway")
    expect(subject.admin_contacts[0].city).to eq("Mountain View")
    expect(subject.admin_contacts[0].zip).to eq("94043")
    expect(subject.admin_contacts[0].state).to eq("CA")
    expect(subject.admin_contacts[0].country).to eq("United States")
    expect(subject.admin_contacts[0].country_code).to eq("US")
    expect(subject.admin_contacts[0].phone).to eq("+1.6502530000")
    expect(subject.admin_contacts[0].fax).to eq("+1.6506188571")
    expect(subject.admin_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("MMR-2383")
    expect(subject.technical_contacts[0].name).to eq("DNS Admin")
    expect(subject.technical_contacts[0].organization).to eq("Google Inc.")
    expect(subject.technical_contacts[0].address).to eq("1600 Amphitheatre Parkway")
    expect(subject.technical_contacts[0].city).to eq("Mountain View")
    expect(subject.technical_contacts[0].zip).to eq("94043")
    expect(subject.technical_contacts[0].state).to eq("CA")
    expect(subject.technical_contacts[0].country).to eq("United States")
    expect(subject.technical_contacts[0].country_code).to eq("US")
    expect(subject.technical_contacts[0].phone).to eq("+1.6502530000")
    expect(subject.technical_contacts[0].fax).to eq("+1.6506188571")
    expect(subject.technical_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(5)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("a0.cth.dns.nic.tel")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("d0.cth.dns.nic.tel")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("n0.cth.dns.nic.tel")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("s0.cth.dns.nic.tel")
    expect(subject.nameservers[4]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[4].name).to eq("t0.cth.dns.nic.tel")
  end
end
