def some_method
  # expected to raise NameError here
  x
end

class CustomError < StandardError; end

# check program is wrong in a right way. (lol)
RSpec.describe 'raise_error matcher' do
  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error((ZeroDivisionError))
    # expect { 10 / 0 }.to raise_error((NameError)) # unmatched error
  end

  it 'can check for a developer-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
