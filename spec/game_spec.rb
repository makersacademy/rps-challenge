require 'game'
require 'player'

describe Game do
  
  let(:game) { Game.new }
  let(:player) { double :player, move: :rock }
  let(:computer) { double :computer }
  let(:player1) { double :player1, move: :scissors }

  context "setting up" do

    it 'can have a player added' do
      game.add(player)
      expect(game.players).to eq [player]
    end


    it 'should know when its ready to start' do
      game.add(player)
      expect(game).to be_ready
    end

  end

  context "playing the game" do

    it 'knows that rock beats scissors' do
    end

    xit 'knows that scissors beats paper' do
    end

    xit 'knows that paper beats rock' do
    end

    xit 'knows when there is a draw' do
    end

  end

end

