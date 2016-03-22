require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player, name: "player1", choice: "Rock" }
  let(:player2) { double :player, name: "player2" }
  let(:rock) { :rock }

  describe '#initialize' do
    it 'should initialize player1 with an instance of player class' do
      expect(game.player1).to eq(player1)
    end

    it 'should initialize player2 with an instance of player class' do
      expect(game.player2).to eq(player2)
    end

    it 'should initialize with winner equal to nil' do
      expect(game.winner).to eq(nil)
    end

    it 'should initialize with draw equal to false' do
      expect(game.draw).to eq(false)
    end

    it 'should initialize singleplayer as false if p2 != Computer' do
      expect(game.singleplayer).to eq(false)
    end
  end

  describe '#player1_name' do
    it 'should display the player1 name' do
      expect(game.player1_name).to eq("player1")
    end
  end

  describe '#player2_name' do
    it 'should display the player2 name' do
      expect(game.player2_name).to eq("player2")
    end
  end

  describe '#player1_weapon' do
    it 'should display player1 weapon' do
      allow(game).to receive(:player1_weapon).and_return("Rock")
      expect(game.player1_weapon).to eq("Rock")
    end
  end

  describe '#player2_weapon' do
    it 'should display player2 weapon' do
      allow(game).to receive(:player2_weapon).and_return("Rock")
      expect(game.player2_weapon).to eq("Rock")
    end
  end

  describe '#multiplayer?' do
    it 'should eq to true if singleplayer = false' do
      expect(game.multiplayer?).to eq(true)
    end
  end

  describe '#rps' do
    it 'should say player1 as winner if player1 wins' do
      game.rps("Rock", "Scissors")
      expect(game.winner).to eq("player1")
    end

    it 'should say player2 as winner if player2 wins' do
      game.rps("Scissors", "Rock")
      expect(game.winner).to eq("player2")
    end

    it 'should change draw to true if game is a draw' do
      game.rps("Rock", "Rock")
      expect(game.draw).to eq(true)
    end
  end

end
