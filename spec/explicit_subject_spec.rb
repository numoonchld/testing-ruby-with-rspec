RSpec.describe Hash do
  subject(:bob) do
    { 
      a: 1,
      b: 2,
    }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq 2
    expect(bob.length).to eq 2
  end
  
  context 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq 2
      expect(bob.length).to eq 2
    end
  end
end