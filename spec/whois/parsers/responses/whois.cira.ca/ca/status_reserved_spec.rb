# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cira.ca/ca/status_reserved.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.cira.ca.rb'

describe Whois::Parsers::WhoisCiraCa, "status_reserved.expected" do

  subject do
    file = fixture("responses", "whois.cira.ca/ca/status_reserved.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      expect(subject.disclaimer).to eq("Use of CIRA's WHOIS service is governed by the Terms of Use in its Legal Notice, available at http://www.cira.ca/legal-notice/?lang=en (c) 2021 Canadian Internet Registration Authority, (http://www.cira.ca/)")
    end
  end
  describe "#domain" do
    it do
      expect(subject.domain).to eq(nil)
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq(nil)
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:reserved)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to eq(nil)
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(nil)
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to eq(nil)
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to eq(nil)
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts).to eq([])
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts).to eq([])
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts).to eq([])
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers).to eq([])
    end
  end
end
