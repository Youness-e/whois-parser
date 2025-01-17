#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2018 Simone Carletti <weppos@weppos.net>
#++


require_relative 'base_icann_compliant'


module Whois
  class Parsers

    # Parser for the ZA Central Registry servers.
    #
    class ZaCentralRegistry < BaseIcannCompliant

      property_supported :domain_id do
        node('Domain ID')
      end

      property_supported :expires_on do
        node('Registry Expiry Date') do |value|
          parse_time(value)
        end
      end

      property_supported :registrar do
        return unless node("Sponsoring Registrar")
        Parser::Registrar.new(
            id:           node('Sponsoring Registrar IANA ID'),
            name:         node('Sponsoring Registrar')
        )
      end

      property_supported :available? do
        !node("Creation Date")
      end

      # Checks whether the response has been throttled.
      #
      # @return [Boolean]
      #
      # @example
      #   Please go away for 13 Seconds
      #
      def response_throttled?
        !!(content_for_scanner =~ /Please go away for \d+ [Ss]econds/)
      end


      private

      def build_contact(element, type)
        node("#{element} Name") do
          Parser::Contact.new(
              type:         type,
              id:           node("#{element} ID").presence,
              name:         value_for_property(element, 'Name'),
              organization: value_for_property(element, 'Organization'),
              address:      value_for_property(element, 'Street'),
              city:         value_for_property(element, 'City'),
              zip:          value_for_property(element, 'Postal Code'),
              state:        value_for_property(element, 'State/Province'),
              country_code: value_for_property(element, 'Country'),
              phone:        value_for_phone_property(element, 'Phone'),
              fax:          value_for_phone_property(element, 'Fax'),
              email:        value_for_property(element, 'Email')
          )
        end
      end

    end

  end
end
