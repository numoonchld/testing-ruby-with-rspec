RSpec.describe 'before and after hooks' do

  before(:context) do
    puts 'once before ENTIRE block'
  end

  after(:context) do
    puts 'once after ENTIRE block'
  end

  before(:example) do
    puts 'before EACH example!'
  end

  after(:example) do
    puts 'after EACH example'
  end

  it 'is just a random example' do 
    puts 'first example'
    expect(5 * 4).to eq 20
  end
  it 'is just another random example' do 
    puts 'second example'
    expect(3 - 2).to eq 1
  end


end