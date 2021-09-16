# ruby_project

Make up a method that converts strings like "00:01:53" to seconds (113 seconds). It's super simple and you can throw lots of different cases at it to learn how to test edge cases and errors.

Build up a list of inputs and expected outputs. Those are your assertions your tests need to make:

```
"00:01:53" => 113
"00:00:00" => 0
"a" => Error # Invalid format
"000:000:123" => Error # Invalid format
15 => Error # Should be a string
```

The coolest dang program that you ever did see.

## Dependencies

* [Ruby](https://www.ruby-lang.org/en/).  Written with version [2.7.0](https://www.ruby-lang.org/en/news/2019/12/25/ruby-2-7-0-released/) - *[docs](https://docs.ruby-lang.org/en/2.7.0/)*.

## Usage

Install deps: `gem install bundler && bundle install`.  Run `bundle exec rake` to run the tests, or `bundle exec rake run` to run the program.