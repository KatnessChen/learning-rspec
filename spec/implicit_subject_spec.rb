RSpec.describe Hash do
  # RSpec will automatically create an instance of the class Hash
  # it's also memoized within same example
  # let(:subject) { Hash.new }

  it 'should start off empty' do
    puts subject
    puts subject.class
    expect(subject.length).to eq(0)
  end
end
