RSpec.configure do |c|
  c.filter_run_excluding :broken => true
end

require 'player'

class PlayerModule
  include Player

  def initialize(name:)
    setup(name)
  end
end

describe PlayerModule do
  let(:name){ "Player" }
  subject(:player){ described_class.new(name: name) }

  describe '#win!' do
    it { expect{player.win!}.to change{player.wins}.by(1) }
    it { expect{player.win!}.to change{player.win?}.from(false).to(true)}
  end

  describe '#not_win!' do
    before do
      player.win!
    end
    it { expect{player.not_win!}.to change{player.win?}.from(true).to(false)}
  end

  describe '#played!' do
    it { expect{player.played!}.to change{player.played?}.from(false).to(true) }
  end

  describe '#turn_finished!' do
    before do
      player.played!
    end
    it { expect{player.turn_finished!}.to change{player.played?}.from(true).to(false) }
  end


  describe '#restart!' do
    before do
      player.win!
      player.restart!
    end
    it { expect(player.wins).to eq 0 }
    it { expect(player.win?).to eq false }
  end
end
