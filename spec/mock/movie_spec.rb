class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you, baby'
  end

  def fall_off_ladder
    'Call my agent! No way!'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def shooting
    return unless actor.ready?

    actor.act
    actor.fall_off_ladder
    actor.light_on_fire
  end

  def shooting_complex_script
    actor.act
    actor.fall_off_ladder
    actor.fall_off_ladder
    actor.light_on_fire
    actor.light_on_fire
    actor.light_on_fire
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.shooting

RSpec.describe Movie do
  subject { described_class.new(actor) }

  let(:actor) { double('Mr. Danger', ready?: true, act: 'some words', fall_off_ladder: 'other words', light_on_fire: true) }

  describe '#shooting' do
    it 'expect actor to have receive certain methods' do
      subject.shooting
      expect(actor).to have_received(:ready?)
      expect(actor).to have_received(:act)
      expect(actor).to have_received(:fall_off_ladder)
      expect(actor).to have_received(:light_on_fire)
    end
  end

  describe '#shooting_complex_script' do
    it 'expect actor to have receive certain methods by certain times' do
      subject.shooting_complex_script
      expect(actor).not_to have_received(:ready?)
      expect(actor).to have_received(:act).once
      expect(actor).to have_received(:act).at_most(1).times
      expect(actor).to have_received(:fall_off_ladder).twice
      expect(actor).to have_received(:fall_off_ladder).at_least(2).times
      expect(actor).to have_received(:light_on_fire).exactly(3).times
    end
  end
end
