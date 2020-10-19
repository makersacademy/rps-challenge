require_relative '../lib/game'

describe Game do

  subject(:game) { described_class.new }

  let(:player_choice) { double :player }
  let(:opponent_choice) { double :player }
  let(:player_name) { double :player }


  describe '#checks player_name ' do
    it 'displays a player name' do
      allow(game).to receive(:player_name).and_return('Tim')
      expect(game.player_name).to eq 'Tim'
    end
    it "will check for a win" do
      allow(game.result).to receive(game.opponent_weapon).and_return('Rock')
      allow(game.result).to receive(game.weapon).and_return('Paper')
      expect(game.result).to eq(:win)
    end
  end
end