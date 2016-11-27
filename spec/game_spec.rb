require 'game.rb'
require 'pry'

describe Game do

subject(:player) {double :player, :choice => "rock"}
subject(:game) {described_class.new(player)}

  context '@Player' do

    it 'should be able to return a game with a player' do
      expect(game.player).to eq player
    end

  end

  context '@choice' do

    it 'should be able to return the players choice' do
      expect(game.player.choice).to eq "rock"
    end

  end

  context '@choices' do

    it 'should be a random choice of plays' do
      expect([:rock,:paper,:scissors,:lizard,:spock]).to include(game.choose_hand)
    end

  end

  context '@winner' do

    it 'checks which the hand is higher than which' do
      game.choose_hand
      game.hand_winner
      expect(game.winner).to_not eq nil
    end

  end

end
