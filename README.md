# IO::Grab

Capture IO writes.

## Installation

Add this line to your application's Gemfile:

    gem 'io-grab'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install io-grab

## Usage

io-grab adds #grab method to IO.
You can use this method to temporarily redirect writes to the object to a string, ie. for later examination.

    require 'io/grab'

    STDOUT.grab { puts "foo" }
    # => "foo\n"

This is particularly useful for testing, eg. to check for expected messages.

    describe "Kernel#puts" do
      it "adds a newline at the end" do
        STDOUT.grab { puts "foo" }.should =~ /\n\z/
      end
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
