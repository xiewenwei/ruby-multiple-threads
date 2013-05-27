# File: gil1.rb

require 'securerandom'
require 'digest'

data = SecureRandom.hex(4096000)

(8 * 48).times { Digest::MD5.digest(data) }

# time ruby gil1.rb