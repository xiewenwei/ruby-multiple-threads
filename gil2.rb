# File: gil2.rb

require 'securerandom'
require 'zlib'

data = SecureRandom.hex(4096000)

threads = []
16.times do
  threads << Thread.new { Zlib::Deflate.deflate(data) }
end

threads.each {|t| t.join}

# time ruby gil2.rb
