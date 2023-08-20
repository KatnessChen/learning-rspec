class Car
  attr_reader :model

  def initialize(model)
    @model = model
  end
end

class Garage
  attr_reader :storage

  def initialize
    @storage = []
  end

  def add_to_collection(model)
    @storage << Car.new(model)
  end
end

RSpec.describe Garage do
  let(:car) { instance_double(Car) }
  let(:model) { 'Mini Cooper' }

  before do
    # return the instance_double instead, to isolate the Garage class from the Car class
    allow(Car).to receive(:new).and_return(car)
  end

  it 'adds a car to its storage' do
    subject.add_to_collection(model)
    expect(Car).to have_received(:new).with(model)
    expect(subject.storage.size).to eq(1)
    expect(subject.storage.first).to eq(car)
  end
end
