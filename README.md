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
