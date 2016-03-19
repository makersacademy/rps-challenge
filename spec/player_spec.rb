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
  end

  describe '#restart!' do
    before do
      player.restart!
    end
    it { expect(player.wins).to eq 0}
  end
end
