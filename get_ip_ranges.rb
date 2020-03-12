# frozen_string_literal: true

# Class for parsing the arguments
class ArgumentsParser
  def self.parse_arguments
    if ARGV.empty?
      puts 'please pass the region name as the argument'
      puts 'You can run as ruby get_ip_ranges.rb us-east-1'
      exit
    end

    p "Getting the IP ranges for the region: #{ARGV.first}"
    IpRange.new(ARGV.first).ip_ranges_for_region
  end
end

require 'json'
require 'open-uri'
require 'net/http'

# Ip range retreiver class
class IpRange
  attr_accessor :region_name, :aws_ip_ranges_and_regions_list
  IP_RANGE_URL = 'https://ip-ranges.amazonaws.com/ip-ranges.json'

  def initialize(region_name)
    self.region_name = region_name
    self.aws_ip_ranges_and_regions_list = retreive_ip_ranges_and_regions_list
    validate_region_name
  end

  # This method is to get the whole output from aws ip ranges
  def retreive_ip_ranges_and_regions_list
    resp = Net::HTTP.get_response(URI.parse(IP_RANGE_URL))
    unless resp && resp.code.to_i == 200
      puts 'Sorry AWS is down at the moment, please try again'
      exit
    end

    JSON.parse(resp.body)
  end

  # This method is to get only the regions from the list
  def aws_regions_list
    @aws_regions_list ||= aws_ip_ranges_and_regions_list['prefixes'].map { |list| list['region'] }.uniq
  end

  def validate_region_name
    unless aws_regions_list.include? region_name
      puts 'Please enter a valid region name'
      exit
    end
  end

  def ip_ranges_for_region
    @ip_ranges_for_region ||= aws_ip_ranges_and_regions_list['prefixes'].select { |list| list['region'] == region_name }.map { |reg| reg['ip_prefix'] }
    puts @ip_ranges_for_region
    puts "The number of IP ranges in the region #{region_name} are: #{@ip_ranges_for_region.count}"
  end
end

ArgumentsParser.parse_arguments
