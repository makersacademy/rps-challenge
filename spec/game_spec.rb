require 'game'

describe Game do
  subject(:game) { described_class.new(player_name) }
  let(:player_name) { double :player_name }

  describe '#initialize' do
    it 'should initialize with a player name saved to an instance variable' do
      allow(game).to receive(:player_name).and_return(player_name)
      expect(game.player_name).to eq player_name
    end
  end

end
