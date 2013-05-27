
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

## Ruby GIL

```sh
time ruby gil1.rb
```

```sh
time ruby gil2.rb
```

## Require deadlock

```sh
ruby require_test.rb
```