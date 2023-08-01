require_relative '../card'

RSpec.describe Card do
  card = Card.new('Ace', 'Spades')

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end
