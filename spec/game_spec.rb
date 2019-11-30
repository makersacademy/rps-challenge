require 'game'

describe Game do

  subject(:game) { Game.new(Player.new('Ellie'))}

  describe '#generate_move' do
    it "should return either rock, paper or scissors" do
      srand(2)
      expect(game.generate_move).to eq 'Rock'
    end
  end
end
