#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'

require_relative '../lib/scraper'

scraper = Scraper.new
details = scraper.mac_specs
prices = scraper.mac_prices

(0...prices.size).each do |index|
  puts "- - - index: #{index + 1} - - - "
  puts "Details: #{details[index]}  | \n  Price:#{prices[index]} "
end