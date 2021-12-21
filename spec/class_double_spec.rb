class Deck
  def self.build
    # business logic to build a card deck
  end
end

class CardGame
  attr_reader :cards
  
  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # class_double(Deck, build: ['Ace','Queen'], shuffle: ['Queen','Ace']) # will fail since no class method shuffle
    deck_klass = class_double(Deck, build: ['Ace','Queen']).as_stubbed_const # klass, becasue class is a reserves ruby keyword

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq ['Ace','Queen']
  end
end