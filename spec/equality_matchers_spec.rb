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
end
