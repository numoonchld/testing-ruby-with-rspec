RSpec.describe Array do
  
  it 'implicit subject' do
    expect(subject.length).to eq 0
    subject.push('Element')
    expect(subject.length).to eq 1
  end
end