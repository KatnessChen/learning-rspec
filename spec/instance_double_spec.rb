class Person
  def a(seconds)
    sleep(seconds)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20) # b actually not exist. Potentially introduce bugs
      expect(person.a).to eq('Hello')
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined on the class' do
      person = instance_double(Person)

      # Rspec error: the Person class does not implement the instance method: b
      # person = instance_double(Person, a: 'Hello', b: 20)

      # Rspec error: Wrong number of arguments. Expected 1, got 2.
      # allow(person).to receive(:a).with(3, 10).and_return('Hello')

      allow(person).to receive(:a).with(3).and_return('Hello')
      expect(person.a(3)).to eq('Hello')
    end
  end
end
