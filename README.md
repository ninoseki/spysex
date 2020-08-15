# spysex

[![Build Status](https://travis-ci.com/ninoseki/spysex.svg?branch=master)](https://travis-ci.com/ninoseki/spysex)
[![Coverage Status](https://coveralls.io/repos/github/ninoseki/spysex/badge.svg?branch=master)](https://coveralls.io/github/ninoseki/spysex?branch=master)
[![CodeFactor](https://www.codefactor.io/repository/github/ninoseki/spysex/badge)](https://www.codefactor.io/repository/github/ninoseki/spysex)

A dead simple [Spyse](https://spyse.com) API wrapper for Ruby.

Note: this wrapper does not support all the API endpoints.

## Installation

```bash
gem install spysex
```

## Usage

```ruby
require "spysex"

# when given nothing, it tries to load your usernamem & API key via ENV["SPYSE_API_KEY"]
api = Spyse::API.new
# or you can set them manually
api = Spyse::API.new("foo bar")

api.domain.get("example.com")
api.domain.search(search_params)

api.ip.get("1.1.1.1")
api.ip.search(search_params)
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
