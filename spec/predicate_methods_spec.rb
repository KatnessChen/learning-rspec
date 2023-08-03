RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    expect(0.zero?).to be(true)
    expect(1.zero?).to be(false)
    expect(8.even?).to be(true)
  end

  it 'can be tested with predicate matchers' do
    # expect(2.even?).to be(true)
    expect(2).to be_even

    # expect(1.odd?).to be(true)
    expect(1).to be_odd

    # expect(0.zero?).to be(true)
    expect(0).to be_zero
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
