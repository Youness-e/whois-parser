# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tznic.or.tz/tz/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.tznic.or.tz", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.tznic.or.tz/tz/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.tznic.or.tz")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.domain).to eq("dailynews.co.tz")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect(subject.created_on).to be_a(Time)
    expect(subject.created_on).to eq(DateTime.parse("2009-07-27 11:01:10"))
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2010-08-30 15:47:56"))
    expect(subject.expires_on).to be_a(Time)
    expect(subject.expires_on).to eq(DateTime.parse("2012-07-27"))
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq("REG-TZNIC")
    expect(subject.registrar.name).to eq("REG-TZNIC")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts.size).to eq(1)
    expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
    expect(subject.registrant_contacts[0].id).to eq("CM7-TZNIC")
    expect(subject.registrant_contacts[0].name).to eq("Collins Mtita")
    expect(subject.registrant_contacts[0].organization).to eq("TSN")
    expect(subject.registrant_contacts[0].address).to eq("Dar_es_salaam\nDar_es_salaam\nP.O.BOX 9033\nTZ")
    expect(subject.registrant_contacts[0].city).to eq(nil)
    expect(subject.registrant_contacts[0].zip).to eq(nil)
    expect(subject.registrant_contacts[0].state).to eq(nil)
    expect(subject.registrant_contacts[0].country).to eq(nil)
    expect(subject.registrant_contacts[0].country_code).to eq(nil)
    expect(subject.registrant_contacts[0].phone).to eq(nil)
    expect(subject.registrant_contacts[0].fax).to eq(nil)
    expect(subject.registrant_contacts[0].email).to eq("mcollins@dailynews.co.tz")
    expect(subject.registrant_contacts[0].created_on).to eq(DateTime.parse("2010-08-30 15:46:35"))
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts.size).to eq(1)
    expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
    expect(subject.admin_contacts[0].id).to eq("CM7-TZNIC")
    expect(subject.admin_contacts[0].name).to eq("Collins Mtita")
    expect(subject.admin_contacts[0].organization).to eq("TSN")
    expect(subject.admin_contacts[0].address).to eq("Dar_es_salaam\nDar_es_salaam\nP.O.BOX 9033\nTZ")
    expect(subject.admin_contacts[0].city).to eq(nil)
    expect(subject.admin_contacts[0].zip).to eq(nil)
    expect(subject.admin_contacts[0].state).to eq(nil)
    expect(subject.admin_contacts[0].country).to eq(nil)
    expect(subject.admin_contacts[0].country_code).to eq(nil)
    expect(subject.admin_contacts[0].phone).to eq(nil)
    expect(subject.admin_contacts[0].fax).to eq(nil)
    expect(subject.admin_contacts[0].email).to eq("mcollins@dailynews.co.tz")
    expect(subject.admin_contacts[0].created_on).to eq(DateTime.parse("2010-08-30 15:46:35"))
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq("JN1-TZNIC")
    expect(subject.technical_contacts[0].name).to eq("Jacob Noel")
    expect(subject.technical_contacts[0].organization).to eq("Twiga Hosting")
    expect(subject.technical_contacts[0].address).to eq("Dar es Salaam\nDar es Salaam\nP.O.Box\nTZ")
    expect(subject.technical_contacts[0].city).to eq(nil)
    expect(subject.technical_contacts[0].zip).to eq(nil)
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq(nil)
    expect(subject.technical_contacts[0].phone).to eq("+255.755763951")
    expect(subject.technical_contacts[0].fax).to eq(nil)
    expect(subject.technical_contacts[0].email).to eq("jacobn@twigaonline.com")
    expect(subject.technical_contacts[0].created_on).to eq(DateTime.parse("2009-08-24 06:21:51"))
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(2)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.twigaservers.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.twigaservers.com")
  end
end
