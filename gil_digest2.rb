# File: gil2.rb

require 'securerandom'
require 'digest'

data = SecureRandom.hex(4096000)

threads = []
8.times do
  threads << Thread.new { 48.times { Digest::MD5.digest(data) } }
end

threads.each {|t| t.join}

# time ruby gil2.rb
