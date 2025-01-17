# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/de/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'

describe "whois.denic.de", :aggregate_failures do

  subject do
    file = fixture("responses", "whois.denic.de/de/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file), host: "whois.denic.de")
    Whois::Parser.parser_for(part)
  end

  it "matches status_registered.expected" do
    expect(subject.disclaimer).to eq("The data in this record is provided by DENIC for informational purposes only. DENIC does not guarantee its accuracy and cannot, under any circumstances, be held liable in case the stored information would prove to be wrong, incomplete or not accurate in any sense. All the domain data that is visible in the whois service is protected by law. It is not permitted to use it for any purpose other than technical or administrative requirements associated with the operation of the Internet. It is explicitly forbidden to extract, copy and/or use or re-utilise in any form and by any means (electronically or not) the whole or a quantitatively or qualitatively substantial part of the contents of the whois database without prior and explicit written permission by DENIC. It is prohibited, in particular, to use it for transmission of unsolicited and/or commercial and/or advertising by phone, fax, e-mail or for any similar purposes. By maintaining the connection you assure that you have a legitimate interest in the data and that you will only use it for the stated purposes. You are aware that DENIC maintains the right to initiate legal proceedings against you in the event of any breach of this assurance and to bar you from using its whois service. The DENIC whois service on port 43 never discloses any information concerning the domain holder/administrative contact. Information concerning the domain holder/administrative contact can be obtained through use of our web-based whois service available at the DENIC website: http://www.denic.de/en/domains/whois-service/web-whois.html")
    expect(subject.domain).to eq("google.de")
    expect { subject.domain_id }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.status).to eq(:registered)
    expect(subject.available?).to eq(false)
    expect(subject.registered?).to eq(true)
    expect { subject.created_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.updated_on).to be_a(Time)
    expect(subject.updated_on).to eq(DateTime.parse("2011-03-30 19:36:27 +0200"))
    expect { subject.expires_on }.to raise_error(Whois::AttributeNotSupported)
    expect(subject.registrar).to be_a(Whois::Parser::Registrar)
    expect(subject.registrar.id).to eq(nil)
    expect(subject.registrar.name).to eq("Domain Admin")
    expect(subject.registrar.url).to eq(nil)
    expect(subject.registrant_contacts).to be_a(Array)
    expect(subject.registrant_contacts).to eq([])
    expect(subject.admin_contacts).to be_a(Array)
    expect(subject.admin_contacts).to eq([])
    expect(subject.technical_contacts).to be_a(Array)
    expect(subject.technical_contacts.size).to eq(1)
    expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
    expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
    expect(subject.technical_contacts[0].id).to eq(nil)
    expect(subject.technical_contacts[0].name).to eq("DNS Admin")
    expect(subject.technical_contacts[0].organization).to eq("Google Inc.")
    expect(subject.technical_contacts[0].address).to eq("1600 Amphitheatre Parkway")
    expect(subject.technical_contacts[0].city).to eq("Mountain View")
    expect(subject.technical_contacts[0].zip).to eq("94043")
    expect(subject.technical_contacts[0].state).to eq(nil)
    expect(subject.technical_contacts[0].country_code).to eq("US")
    expect(subject.technical_contacts[0].phone).to eq("+1.6502530000")
    expect(subject.technical_contacts[0].fax).to eq("+1.6506188571")
    expect(subject.technical_contacts[0].email).to eq("dns-admin@google.com")
    expect(subject.nameservers).to be_a(Array)
    expect(subject.nameservers.size).to eq(4)
    expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[0].name).to eq("ns1.google.com")
    expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[1].name).to eq("ns2.google.com")
    expect(subject.nameservers[2]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[2].name).to eq("ns3.google.com")
    expect(subject.nameservers[3]).to be_a(Whois::Parser::Nameserver)
    expect(subject.nameservers[3].name).to eq("ns4.google.com")
    expect(subject.response_throttled?).to eq(false)
  end
end
