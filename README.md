
# Ruby Multiple Threads Examples


The project includes some examples for potential and weakness of Ruby multiple threads programming.

# Usage

Make sure your system is Linux or Mac. And make sure Ruby is available first. You can change ruby version using RVM or rbenv.

## Block IO

```sh
time ruby block_io1.rb
```

```sh
time ruby block_io2.rb
```

## Ruby GIL (digest)
```sh
time ruby gil_digest1.rb
```

```sh
time ruby gil_digest2.rb
```

## Ruby GIL (Zlib)

```sh
time ruby gil1.rb
```

```sh
time ruby gil2.rb
```

The std-lib Zlib is special. Zlib streams are processed without the GVL in Ruby 2.0. This allows gzip, zlib and
    deflate streams to be processed in parallel. 
So multiple-thread code is faster than single-thread in Ruby 2.0.

See: <https://github.com/ruby/ruby/blob/v2_0_0_0/NEWS#L512-L513/>    

## Require deadlock

```sh
ruby require_test.rb
```