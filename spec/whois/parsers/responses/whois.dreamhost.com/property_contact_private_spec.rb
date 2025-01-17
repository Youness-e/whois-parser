# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dreamhost.com/property_contact_private.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.dreamhost.com", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.dreamhost.com/property_contact_private.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.dreamhost.com")
    Whois::Parser.parser_for(part)
  end

  it "matches property_contact_private.expected" do
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].name).to eq("PRIVATE REGISTRANT")
    expect(subject.registrant_contacts[0].organization).to eq("A HAPPY DREAMHOST CUSTOMER")
    expect(subject.registrant_contacts[0].address).to eq("417 ASSOCIATED RD #324, C/O ADEQUATEHQ.COM")
    expect(subject.registrant_contacts[0].city).to eq("BREA")
    expect(subject.registrant_contacts[0].zip).to eq("92821")
    expect(subject.registrant_contacts[0].state).to eq("CA")
    expect(subject.registrant_contacts[0].country_code).to eq("US")
    expect(subject.registrant_contacts[0].phone).to eq("+1.7147064182")
    expect(subject.registrant_contacts[0].fax).to eq("")
    expect(subject.registrant_contacts[0].email).to eq("ADEQUATEHQ.COM@PROXY.DREAMHOST.COM")
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].name).to eq("PRIVATE REGISTRANT")
    expect(subject.admin_contacts[0].organization).to eq("A HAPPY DREAMHOST CUSTOMER")
    expect(subject.admin_contacts[0].address).to eq("417 ASSOCIATED RD #324, C/O ADEQUATEHQ.COM")
    expect(subject.admin_contacts[0].city).to eq("BREA")
    expect(subject.admin_contacts[0].zip).to eq("92821")
    expect(subject.admin_contacts[0].state).to eq("CA")
    expect(subject.admin_contacts[0].country_code).to eq("US")
    expect(subject.admin_contacts[0].phone).to eq("+1.7147064182")
    expect(subject.admin_contacts[0].fax).to eq("")
    expect(subject.admin_contacts[0].email).to eq("ADEQUATEHQ.COM@PROXY.DREAMHOST.COM")
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].name).to eq("PRIVATE REGISTRANT")
    expect(subject.technical_contacts[0].organization).to eq("A HAPPY DREAMHOST CUSTOMER")
    expect(subject.technical_contacts[0].address).to eq("417 ASSOCIATED RD #324, C/O ADEQUATEHQ.COM")
    expect(subject.technical_contacts[0].city).to eq("BREA")
    expect(subject.technical_contacts[0].zip).to eq("92821")
    expect(subject.technical_contacts[0].state).to eq("CA")
    expect(subject.technical_contacts[0].country_code).to eq("US")
    expect(subject.technical_contacts[0].phone).to eq("+1.7147064182")
    expect(subject.technical_contacts[0].fax).to eq("")
    expect(subject.technical_contacts[0].email).to eq("ADEQUATEHQ.COM@PROXY.DREAMHOST.COM")
  end
end
