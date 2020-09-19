require 'game'

describe Game do

  subject(:game) { Game.new(name) }
  let(:name) { 'Veronica' }
  let(:win_msg) { 'You won!' }
  let(:tie_msg) { 'You tied' }
  let(:lose_msg) { 'You lost' }

  it 'takes a name argument on initialisation' do
    expect(Game).to respond_to(:new).with(1).argument
  end

  it 'stores the name given' do
    expect(game.name).to eq(name)
  end

  describe '#self.create(name)' do
    it 'creates an instance of Game' do
      expect(Game).to receive(:new).once.with(name)
      Game.create(name)
    end
  end

  describe '#self.instance' do
    it 'returns the game instance' do
      Game.create(name)
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end

  describe '#play' do
    it "returns 'You won!' if P1 move = rock and P2 move = scissors" do
      expect(game.play('rock', 'scissors')).to eq(win_msg)
    end

    it "returns 'You won!' if P1 move = paper and P2 move = rock" do
      expect(game.play('paper', 'rock')).to eq(win_msg)
    end

    it "returns 'You won!' if P1 move = scissors and P2 move = paper" do
      expect(game.play('scissors', 'paper')).to eq(win_msg)
    end

    it "returns 'You tied' if P1 move is the same as P2 move" do
      expect(game.play('rock', 'rock')).to eq(tie_msg)
    end

    it "returns 'You lost' if P1 move = rock and P2 move = paper" do
      expect(game.play('rock', 'paper')).to eq(lose_msg)
    end

    it "returns 'You lost' if P1 move = paper and P2 move = scissors" do
      expect(game.play('paper', 'scissors')).to eq(lose_msg)
    end

    it "returns 'You lost' if P1 move = scissors and P2 move = rock" do
      expect(game.play('scissors', 'rock')).to eq(lose_msg)
    end
  end
end
