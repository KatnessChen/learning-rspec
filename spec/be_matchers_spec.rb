# only 2 falsy values in Ruby -- false, nil
# other things - 0, -1, '', [], {} - are truthy

RSpec.describe do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect('').to be_truthy
    expect(0).to be_truthy
    expect([]).to be_truthy
    expect({}).to be_truthy
    expect(-1).to be_truthy
    expect(:symbol).to be_truthy
  end

  it 'can be test for false' do
    expect(false).to be_falsy
    expect(nil).to be_falsy
    expect(nil).to be_nil
  end

  it 'can test for nil' do
    let(:my_hash) { { a: 5 } }

    expect(my_hash[:b]).to be_nil
  end
end
