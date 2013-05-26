$LOAD_PATH << "."

t1 = Thread.new { require 'a' }
t2 = Thread.new { require 'b' }
t1.join
t2.join
