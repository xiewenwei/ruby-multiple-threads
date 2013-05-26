# File: gil1.rb

require 'securerandom'
require 'zlib'

data = SecureRandom.hex(4096000)

16.times { Zlib::Deflate.deflate(data) }

# time ruby gil1.rb