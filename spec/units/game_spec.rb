require 'game'

describe Game do

  subject(:game) { Game.new(player_1) }
  let(:player_1) { double('player_1', name: 'Veronica') }

  it 'takes a player argument on initialisation' do
    expect(Game).to respond_to(:new).with(1).argument
  end

  it 'stores the player given' do
    expect(game.p1).to eq(player_1)
  end

  describe '#self.create(player_1)' do
    it 'creates an instance of Game with one player' do
      expect(Game).to receive(:new).once.with(player_1, nil)
      Game.create(player_1)
    end
  end

  describe '#self.instance' do
    it 'returns the game instance' do
      Game.create(player_1)
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end

  describe '#play' do
    it "returns 'P1' if P1 move = rock and P2 move = scissors" do
      expect(game.play('rock', 'scissors')).to eq('P1')
    end

    it "returns 'P1' if P1 move = paper and P2 move = rock" do
      expect(game.play('paper', 'rock')).to eq('P1')
    end

    it "returns 'P1' if P1 move = scissors and P2 move = paper" do
      expect(game.play('scissors', 'paper')).to eq('P1')
    end

    it "returns 'DRAW' if P1 move is the same as P2 move" do
      expect(game.play('rock', 'rock')).to eq('DRAW')
    end

    it "returns 'P2' if P1 move = rock and P2 move = paper" do
      expect(game.play('rock', 'paper')).to eq('P2')
    end

    it "returns 'P2' if P1 move = paper and P2 move = scissors" do
      expect(game.play('paper', 'scissors')).to eq('P2')
    end

    it "returns 'P2' if P1 move = scissors and P2 move = rock" do
      expect(game.play('scissors', 'rock')).to eq('P2')
    end
  end
end
