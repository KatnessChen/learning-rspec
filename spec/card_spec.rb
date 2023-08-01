require_relative '../card'

RSpec.describe Card do
  # Good part of let variables
  # 1. lazy loading - the variable is not created until it is called
  # 2. memoization - within same "it" test suite
  # 3. variable is not shared between examples
  let(:card) { Card.new('Ace', 'Spades') }

  # let!(:x) { 1 + 1 } # eager loading

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end
end
