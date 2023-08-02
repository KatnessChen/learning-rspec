require_relative '../king'

RSpec.describe King do
  subject { described_class.new('Boris') }

  it 'has a name' do
    expect(subject.name).to eq('Boris')
  end
end
