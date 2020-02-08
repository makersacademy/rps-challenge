require 'spec_helper'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  subject(:second_game) { described_class.new(player_one, player_two) }
  let(:player_one) { Player.new("Tango") }
  let(:player_two) { Player.new("Cash") }

  describe "#new" do
    it 'initializes with instances of player' do
      expect(game.player_1).to eq player_1
    end
  end

  context "results" do
    def automator(player_1_option, player_2_option)
      second_game.player_1.choice(player_1_option)
      second_game.player_2.choice(player_2_option)
    end
  
    it 'shows Paper beats Rock' do
      automator("Paper", "Rock")
      expect(second_game.winner).to eq player_one
      expect(second_game.loser).to eq player_two
    end
  
    it 'shows Lizard beats Spock' do
      automator("Lizard", "Spock")
      expect(second_game.winner).to eq player_one
      expect(second_game.loser).to eq player_two
    end
  
    it 'shows Paper beats Rock' do
      automator("Spock", "Scissors")
      expect(second_game.winner).to eq player_one
      expect(second_game.loser).to eq player_two
    end
  end
end
