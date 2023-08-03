RSpec.describe 'equality matchers' do
  let(:a) { 3.0 } # float
  let(:b) { 3 } # integer

  context 'eq matcher' do
    it 'tests for value and ignore types' do
      expect(a).to eq(b)
    end
  end

  context 'eql matcher' do
    it 'tests for value and types' do
      expect(a).not_to eql(b)
    end
  end

  context 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      # check same value
      expect(c).to eq(e)
      expect(c).to eq(d)
      expect(c).to eq([1, 2, 3])

      # check same identity
      expect(c).to equal(e)
      expect(c).not_to equal([1, 2, 3])
      expect(c).to be(e) # alias method for `equality`

      # same value but different identity
      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end
