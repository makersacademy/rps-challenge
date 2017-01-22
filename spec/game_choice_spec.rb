require 'game_choice'

describe GameChoice do
  subject(:gamechoice) { described_class.new(:Rock) }
  let(:computer_rps) { instance_double("RockPaperScissors") }

  describe 'player_rps' do
    it "should have a player's choice of rock, paper or scissors" do
      expect(gamechoice.player_rps).to eq(:Rock)
    end
  end

  describe 'computer_rps' do
    it "should have a player's choice of rock, paper or scissors" do
      allow(computer_rps).to receive(:rock_paper_scissors) {:Rock}
      expect(gamechoice.player_rps).to eq(:Rock)
    end
  end
end
