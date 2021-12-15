class King 
  attr_reader :name 

  def initialize(name)
    @name = name
  end
end

# RSpec.describe King do
#   subject { King.new('Boris') }
#   let(:louis) { King.new'Louis' }
# end

=begin
# RSpec helper => `described_class`
  - dynamically refers to the argument passed to RSpec.describe
=end


RSpec.describe King do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'represents a royal' do
    expect(subject.name). to eq('Boris')
  end
end