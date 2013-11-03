#! /usr/bin/env ruby
require_relative 'cleaner'

cleaner = Cleaner.new(ARGV[0])
puts ARGV[0]
cleaner.clean!
