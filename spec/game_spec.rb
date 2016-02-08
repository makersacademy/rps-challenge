require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }
  
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
    it 'chooses rock, paper, scissors, lizard or spock' do
      allow(computer).to receive(:choose) { :paper }
      expect(game.computers_choice).to eq :paper
    end
  end
  
  describe "#winner" do
    before do
      allow(computer).to receive(:choose) { :paper }
      game.computers_choice
    end
    
    it 'picks a winner' do
      game.players_choice(:rock)
      expect(game.winner).to eq "Computer"
    end
    
    it 'can draw' do
      game.players_choice(:paper)
      expect(game.winner).to eq "Draw"
    end
  end
end