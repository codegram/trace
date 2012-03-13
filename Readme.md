# trace

Trace uses `#set_trace_func` to trace Ruby method calls.

## Installing

In your Gemfile:

    gem 'trace'

## Usage:

In your code:

```ruby
require 'trace'

def foo(val)
  bar(val + 1)
end

def bar(val)
  val
end

trace do
  foo(2)
end
```ruby

The output will be like this:

    [TRACE] hey.rb:3 Object#foo
    [TRACE] hey.rb:7 Object#bar

## License

Released under the MIT License.
Copyright 2011 [Codegram Technologies](http://codegram.com)
