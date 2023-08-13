RSpec.describe do
  it 'allows for aggregate check' do
    # [2, 4, 6, 8].each do |num|
    #   expect(num).to be_even
    # end
    # can be replace with:
    expect([2, 4, 6, 8]).to all(be_even)

    expect([[], [], []]).to all(be_empty)
    expect([0, 0, 0]).to all(be_zero)
    expect([1, 2, 3]).to all(be < 10)
  end

  describe [5, 7, 9] do
    it { is_expected.to all(be < 10) }
    it { is_expected.to all(be_odd) }
  end
end
