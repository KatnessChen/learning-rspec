RSpec.describe 'not_to method' do
  it 'checks that two values do not match' do
    expect(5).not_to eq(4)
    expect('hello').not_to eq('Hello')
  end
end
