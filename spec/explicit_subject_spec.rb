RSpec.describe Hash do
  # create a custom subject for the test
  subject(:bob) do
    { a: 1, b: 2 }
  end

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
  end

  it 'has two key-value pairs with alias bob' do
    expect(bob.length).to eq(2)
  end
end
