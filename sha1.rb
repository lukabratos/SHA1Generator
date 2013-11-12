#!/usr/bin/env ruby
require 'digest/sha1'

print 'Enter text: '
text = gets.chomp
sha1val = Digest::SHA1.hexdigest text
IO.popen('pbcopy', 'w') { |f| f << sha1val }
puts 'SHA1 copied to clipboard!'