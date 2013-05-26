
puts "#{Thread.current}: a.rb"
sleep 1
puts "#{Thread.current}: requiring b"
require 'b'
