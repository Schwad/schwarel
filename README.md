# 🚧 WIP: Not live yet 🚧

# Schwarel

Opinionated Arel. Built following my thoughts collected [from the community here](https://gist.github.com/Schwad/fc5a3ffa65fab1a95654782cab45aa49).

## Opinion:

1. You should use ActiveRecord to interact with your database.
1. If at all possible, you should not use raw SQL in your rack-based Ruby application
1. If you find yourself unable to do number 1 and drifting towards number 2, use Schwarel
1. These are just opinions. That's why I've chucked this into a gem and not a rails/rails PR. I welcome yours as well. If any pattern gets _actually used_ quite a bit we should consider upstreaming a feature to rails/rails.

## What is?

Schwarel is a thin layer over the top of arel. Giving an opinionated API for users to use its featureset.

## Show me

**Before**

**After**

## Attributions

@flanger001 had the initial [ideas here](https://github.com/rails/rails/pull/39207) with some inspiration from @tenderlove [here](https://github.com/rails/rails/pull/39198). I take code directly from much of that first PR with some ommissions due to taste.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add schwarel

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install schwarel

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test-unit` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Schwad/schwarel. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/Schwad/schwarel/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Schwarel project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/Schwad/schwarel/blob/master/CODE_OF_CONDUCT.md).
