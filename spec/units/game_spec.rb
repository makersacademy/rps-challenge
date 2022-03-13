require 'game'

describe Game do
  let(:comp) { double(:comp) }
  let (:player) { double(:player) }

  describe '#comp_choice' do
    it "returns computer choice" do
      game = Game.new(player, comp)
      allow(comp).to receive(:make_choice).and_return('Rock')
      
      expect(game.comp_choice).to eq 'Rock'
    end
  end

  describe '#winner' do
  before do  
    @game = Game.new(player, comp)
  end
    it "returns the winner" do
      expect(@game.winner('Rock', 'Scissors')).to eq "You win!"
    end

    it "returns the winner" do
      expect(@game.winner('Rock', 'Rock')).to eq "It's a draw!" 
    end

    it "returns the winner" do
      expect(@game.winner('Rock', 'Paper')).to eq "Sorry, you lose... try again!" 
    end
  end
end