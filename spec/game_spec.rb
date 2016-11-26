require 'game.rb'

describe Game do

subject(:player) {double :player, :choice => "Rock"}
subject(:opponent) {double :player, :choice => "Scissors"}
subject(:game) {described_class.new(player)}

  context '@Player' do

    it 'should be able to return a game with a player' do
      expect(game.player).to eq player
    end

  end

  context '@choice' do

    it 'should be able to return the players choice' do
      expect(game.player.choice).to eq "Rock"
    end

  end

  context '@choices' do

    it 'should be a random choice of plays' do
      expect(["Rock","Paper","Scissors"]).to include(game.choose_hand)
    end

  end

  

end
