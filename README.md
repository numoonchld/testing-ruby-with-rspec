# Setup

- `rbenv versions`: lists all ruby versions managed by `rbenv`
- `ruby -v`: shows active dir ruby set by `.ruby-version` file
- `gem -v`: shows the ruby gem version manager version

## Install `rspec`

- `gem install rspec`

## Initialize `rspec` dir structure

- `rspec --init`

# Notes

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

  ```ruby
    before do
      ...
    end
  ```

  is the same as

  ```ruby
    before(:example) do
      ...
    end
  ```

  - other parameters that `before` can take are `:suit` and `:context`

- `after` is another hook

#### `let` method

- useful to reduce duplication of instance varibles for each example
  - will be the go to method for reducing duplication
  - `let` is a way to memoize (cache) something given to it

```ruby
  let(:card) { Card.new('Ace','Spades')}
```

- `let` instanciates a new item specifed before each example (i.e. `it` block)
  - `let` by default implments lazy-loading
    - i.e. creates a card only at the time it needs to exist
    - `let!()` bypasses lazy loading

### Custom error message for assertions

- `.to` takes a second argument (a string) that is the message to show when the assertion fails

### `describe`/`context`

- they are aliases of each other
- while `it`/`specify` should be matter of fact statements
  - more abstract ideas should use `describe`/`context`
  - do not try to stuff complex scenario descriptions in an `it` (example's) docstring
- use as many nested `describe`/`context` as necessary to structure the test in a readable manner

## RSpec helpers

- `subject`:

  - implicity an instance of the class passed to `RSpec.describe`
  - explictly can be called with a `do..end` block to lazy load an explicit definition of an instance of the described class

- `described_class`:
  - dynamically refers to the class passed in as an argument to `RSpec.describe`
