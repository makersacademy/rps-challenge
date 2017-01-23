require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { instance_double("Player") }
  let(:computer) { double("Computer") }
  let(:player_rps) { instance_double("RockPaperScissors") }

  describe '#player' do
    it 'retrieves the player' do
      expect(game.player).to eq player
    end
  end

  describe '#computer' do
    it 'retrieves the computer' do
      expect(game.computer).to eq computer
    end
  end

  describe 'player_rps' do
    it "should have a player's choice of rock, paper or scissors" do
      game.player_rps(:Rock)
      expect(game.player_choice).to eq(:Rock)
    end
  end

  describe 'computer_rps' do
    it "should have a computer's choice of rock, paper or scissors" do
      allow(computer).to receive(:rock_paper_scissors){:Rock}
      game.computer_rps
      expect(game.computer_choice).to eq(:Rock)
    end
  end

  describe '#win_tie_loose' do
    it "decides who wins" do
      allow(computer).to receive(:rock_paper_scissors) { :Rock }
      expect(game.win_tie_loose).to eq("Tie!")
    end
  end
end
