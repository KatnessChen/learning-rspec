RSpec.describe 'comparison matchers' do
  it 'allows for comparison with built-in Ruby operators' do
    expect(10).to be > 5
    expect(8).to be < 15
    expect(3).to be == 3
  end

  describe 100 do
    it { is_expected.to be > 99 }
    it { is_expected.not_to be < 99 }
  end
end
