# FormatUrl [![Build Status](https://api.travis-ci.org/pinchtozoom/format_url.png)](https://travis-ci.org/pinchtozoom/format_url)


Format and validate a URL attribute in Active Record. This is an example gem created and based on [RailsCasts episode #301](http://railscasts.com/episodes/301-extracting-a-ruby-gem).

## Installation

Add this line to your application's Gemfile:

    gem 'format_url'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install format_url

## Usage
Call `format_url` in an ActiveRecord class and pass the name of the attribute you wish to format into a URL and validate.

```ruby
class MyClass < ActiveRecord::Base
	format_url :website
end
```
 
This will automatically add "http://" to the beginning of the `website` attribute upon saving if no protocol is present. It will also do validation to ensure it looks like a URL.
 
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
