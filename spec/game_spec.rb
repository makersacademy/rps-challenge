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

    it 'knows that paper beats rock' do
      game.add(player)
      game.add(computer)
      allow(computer).to receive(:move).and_return(:paper)
      expect(game.winner).to eq computer
    end

    it 'knows that rock beats scissors' do
      game.add(player)
      game.add(computer)
      allow(computer).to receive(:move).and_return(:scissors)
      expect(game.winner).to eq player
    end

    it 'knows that scissors beats paper' do
      game.add(player1)
      game.add(computer)
      allow(computer).to receive(:move).and_return(:paper)
      expect(game.winner).to eq player1
    end

    it 'knows when there is a draw' do
      game.add(player)
      game.add(computer)
      allow(computer).to receive(:move).and_return(:rock)
      expect(game.winner).to eq "draw"
    end

  end

end

