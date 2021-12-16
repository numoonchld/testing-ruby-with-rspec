class Wrestler
  attr_reader :name, :move

  def initialize(name, move)
    @name = name
    @move = move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe Wrestler.new('Stone Cold', 'Stunner' ) do
    it 'checks for object attribute and prover values' do
      expect(subject).to have_attributes(name: "Stone Cold")
      expect(subject).to have_attributes(name: 'Stone Cold', move: "Stunner")
    end

    it { is_expected.to have_attributes(name: 'Stone Cold', move: 'Stunner') }
  end
end