RSpec.describe "include matcher" do
  describe 'hot chocolate' do
    it 'can check for substring inclusion' do
      expect(subject).to include('hot')
      expect(subject).to include('choco')
    end

    it { is_expected.to include('hot') }
    it { is_expected.to include('choco') }
  end

  describe [1, 15, 30, [7, 8]] do
    it 'can check for array inclusion' do
      expect(subject).to include(30, 1) # order doesn't matter
      # expect(subject).to include([15, 20]) # this fails
      expect(subject).to include(1, [7, 8]) # also can check for nested array
    end

    it { is_expected.to include(15, [7, 8]) }
  end

  describe({ a: 1, b: 2 }) do
    it 'can check for key existence' do
      expect(subject).to include(:a)
      expect(subject).to include(:b, :a)
    end

    it 'can check for key-value pair' do
      expect(subject).to include({ a: 1 })
      expect(subject).to include(a: 1)
    end

    it { is_expected.to include({ b: 2 }) }
    it { is_expected.to include(b: 2) }
  end
end
