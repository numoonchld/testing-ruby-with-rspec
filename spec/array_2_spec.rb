RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it 'has length of 2' do
    expect(subject.length).to eq 2
    subject.pop
    expect(subject.length).to eq 1
  end

  it 'is same as the original array' do
    expect(sally).to eq [1, 2]
  end
end