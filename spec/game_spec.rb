require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  
  describe "player" do
    it 'gets the players name' do
      allow(player).to receive(:name) { "Dave" }
      expect(game.players_name).to eq 'Dave'
    end
    
    it 'stores the players choice' do
      expect(game.players_choice("Rock")).to eq "Rock"
    end
  end
  
  describe '#computer' do
    it 'chooses rock, paper, or scissors' do
      allow(game).to receive(:choose) { "Paper" }
      expect(game.computers_choice).to eq "Paper"
    end
  end
  
  describe "#winner" do
    before do
      allow(game).to receive(:choose) { "Paper" }
      game.computers_choice
    end
    
    it 'picks a winner' do
      game.players_choice("Rock")
      expect(game.winner).to eq "Computer"
    end
    
    it 'can draw' do
      game.players_choice("Paper")
      expect(game.winner).to eq "Draw"
    end
  end
end