# Solid Struct

A Ruby gem providing a Struct variant that allows initialisation with named parameters. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'solid-struct'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install solid-struct

and require it in your Ruby code:

````ruby
require 'solid_struct'
````


## Usage

```ruby
Klass = SolidStruct.new(:param1, :param2, :param3)
instance = Klass.new(param1: 1, param2: "foo", param3: "bar")
instance.param1
#=> 1
instance.param2
#=> "foo"
instance.param3
#=> "bar"
```

This allows for more readable code, especially when the struct definition is separated from the use. Named parameters intrinsically convey more meaning and reduce the need for comments.

Using named arguments allows you to initialise parameters out of order, of course:

```ruby
Klass = SolidStruct.new(:param1, :param2, :param3)
instance = Klass.new(param2: "foo", param1: 1, param3: "bar")
instance.param1
#=> 1
instance.param2
#=> "foo"
instance.param3
#=> "bar"
```

You can still use positional arguments if you choose to ignore the benefits of the gem:


```ruby
Klass = SolidStruct.new(:param1, :param2, :param3)
instance = Klass.new(1, "foo", "bar")
instance.param1
#=> 1
instance.param2
#=> "foo"
instance.param3
#=> "bar"
```

Or you can define and initialise in one simple step:


```ruby
instance = SolidStruct.build(param1: 1, param2: "foo", param3: "bar")
instance.param1
#=> 1
instance.param2
#=> "foo"
instance.param3
#=> "bar"

# Unlike an OpenStruct undefined arguments are not allowed:

instance.pancake
#=>NoMethodError: undefined method `pancake' for #<struct param1=1, param2="foo", param3="bar">
```


## Credits

Partially based on Stack Overflow answers by clacke and Matt S:

http://stackoverflow.com/questions/5407940/named-parameters-in-ruby-structs


## Contributing

1. Fork it ( https://github.com/[my-github-username]/named-struct/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
