RSpec.describe Hash do

  # let(:subject) {Hash.new} => implicit subject creation

  it 'should start off empty' do
    puts subject
    expect(subject.count).to eq 0 
    subject[:some_key] = 'Some Value'
    expect(subject.count).to eq 1
  end

  it 'is isolated between examples' do
    expect(subject.count).to eq 0
  end

end