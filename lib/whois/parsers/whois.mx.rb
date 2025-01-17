#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2018 Simone Carletti <weppos@weppos.net>
#++


require_relative 'base'


module Whois
  class Parsers

    #
    # = whois.nic.mx parser
    #
    # Parser for the whois.nic.mx server.
    #
    # NOTE: This parser is just a stub and provides only a few basic methods
    # to check for domain availability and get domain status.
    # Please consider to contribute implementing missing methods.
    # See WhoisNicIt parser for an explanation of all available methods
    # and examples.
    #
    class WhoisMx < Base

      property_supported :status do
        if available?
          :available
        else
          :registered
        end
      end

      property_supported :available? do
        !!(content_for_scanner =~ /Object_Not_Found/)
      end

      property_supported :registered? do
        !available?
      end


      property_supported :created_on do
        if content_for_scanner =~ /Created On:\s+(.*)\n/
          parse_time($1)
        end
      end

      # FIXME: the response contains localized data
      # Expiration Date: 10-may-2011
      # Last Updated On: 15-abr-2010 <--
      # property_supported :updated_on do
      #   if content_for_scanner =~ /Last Updated On:\s+(.*)\n/
      #     parse_time($1)
      #   end
      # end

      property_supported :expires_on do
        if content_for_scanner =~ /Expiration Date:\s+(.*)\n/
          parse_time($1)
        end
      end

      property_supported :nameservers do
        if content_for_scanner =~ /Name Servers:\n((.+\n)+)\n/
          $1.scan(/DNS:\s+(.+)\n/).flatten.map do |line|
            name, ipv4 = line.strip.split(/\s+/)
            Parser::Nameserver.new(:name => name, :ipv4 => ipv4)
          end
        end
      end

    end

  end
end
