class Deck
  def self.build
    # Business logic to build a whole bunch of cards
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
    # RSpec error: the Deck class does not implement the class method: shuffle
    # class_double(Deck, build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace'])

    # RSpec error: the Deck class does not implement the instance method: build. Perhaps you meant to use `class_double` instead?
    # instance_double(Deck, build: ['Ace', 'Queen'], shuffle: ['Queen', 'Ace'])

    # use string 'Deck' allows TDD (the class can built later the spec)
    # class_double('Deck', build: %w[Ace Queen])

    # Note: need `.as_stubbed_const` method to bind the Deck calling in the `start` method with the Deck class together
    deck_klass = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const
    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(%w[Ace Queen])
  end
end
