require 'game_choice'
require 'game'
require 'rockpaperscissors'

describe GameChoice do
  computer_rps = RockPaperScissors.new
  subject(:gamechoice) { described_class.new(:Rock, computer_rps) }
  let(:player_rps) { instance_double("RockPaperScissors") }

  describe 'player_rps' do
    it "should have a player's choice of rock, paper or scissors" do
      expect(gamechoice.player_rps).to eq(:Rock)
    end
  end

  describe 'computer_rps' do
    it "should have a computer's choice of rock, paper or scissors" do
      allow(computer_rps).to receive(:rock_paper_scissors){:Rock}
      expect(gamechoice.computer_rps).to eq(:Rock)
    end
  end

  describe '#win_tie_loose' do
    it "decides whether the player or computer wins" do
      allow(computer_rps).to receive(:rock_paper_scissors) { :Rock }
      expect(gamechoice.win_tie_loose).to eq("Tie!")
    end
  end
end
