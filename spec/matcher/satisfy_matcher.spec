RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    # satisfy need 2 parameters
    # 1. a description string (we can more easily identify the failure)
    # 2. a block that return a predicate
    expect(subject).to satisfy('is a palindrome') { |value| value == value.reverse }
    expect(subject).to satisfy('is a palindrome') do |value|
      value == value.reverse
    end
  end
end
