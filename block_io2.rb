# File: block_io2.rb

def func1
  puts "sleep 3 seconds in func1\n"
  sleep(3)
end

def func2
  puts "sleep 2 seconds in func2\n"
  sleep(2)
end

def func3
  puts "sleep 5 seconds in func3\n"
  sleep(5)
end

threads = []
threads << Thread.new { func1 }
threads << Thread.new { func2 }
threads << Thread.new { func3 }

threads.each { |t| t.join }

# time ruby block_io2.rb
