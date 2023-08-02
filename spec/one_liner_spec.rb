RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    #  is_expected is the special syntax for subject
    it { is_expected.to eq(5) }
  end
end
