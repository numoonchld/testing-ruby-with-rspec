# Setup

- `rbenv versions`: lists all ruby versions managed by `rbenv`
- `ruby -v`: shows active dir ruby set by `.ruby-version` file
- `gem -v`: shows the ruby gem version manager version

## Install `rspec`

- `gem install rspec`

## Initialize `rspec` dir structure

- `rspec --init`

## Notes

- example group block:

  ```ruby
  RSpec.describe 'Card' do

  end
  ```

- examples are tests that sit inside an example group

  - use `it` blocks for examples themselves in the example group block
  - `specify` is an alias for `it`

- `expect` is an `rspec` method to set expectations within an example

  - these `expect` statements are called assertions

- a single example can have multilpe assertions/expectations

### To run the tests

- three ways:
  1. run all tests in the root dir and the nested dirs i.e. the entire project by simply doing `rspec` in the CLI
  2. do `rspec spec/card_spec.rb` to run all test groups in an individual file
  3. do `rspec ./spec/card_spec.rb:3` i.e. with the line number to run only that line's example

### Mutation and instance variables

- be careful of mutation of variables in the sequence of test example execution
  - sometimes it makes more sense to have isolated duplicate instance varible creation in examples

### Hooks

- code that runs automatically at the time of test suit execution
