require 'player'

RSpec.describe Player do

  let (:player) { described_class.new('Ralph') }
  let(:game) { double('game', :choice => 'rock') }

  describe '#name' do

    it 'returns the name of player' do

      expect(player.name).to eq player.name

    end
  end

  describe "#choice" do

    it 'returns the choice of the user when playing the game' do

    end
  end

end
