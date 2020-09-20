require 'game'

describe Game do

  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double('player_1', name: 'Veronica') }
  let(:player_2) { double('player_2', name: 'Bobby the Bot') }

  it 'takes one or two player arguments on initialisation' do
    expect(Game).to respond_to(:new).with(1).argument
    expect(Game).to respond_to(:new).with(2).arguments
  end

  it 'stores the player given' do
    expect(game.p1).to eq(player_1)
  end

  it 'sets player 2 as a CPU player if none provided' do
    game = Game.new(player_1)

    expect(game.p2).to be_an_instance_of(CPUPlayer)
  end

  describe '#self.create(player_1, player_2)' do
    it 'creates an instance of Game with the given player/s' do
      expect(Game).to receive(:new).once.with(player_1, player_2)
      Game.create(player_1, player_2)
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
      allow(player_1).to receive(:move).and_return('rock')
      allow(player_2).to receive(:move).and_return('scissors')

      expect(game.play).to eq('P1')
    end

    it "returns 'P1' if P1 move = paper and P2 move = rock" do
      allow(player_1).to receive(:move).and_return('paper')
      allow(player_2).to receive(:move).and_return('rock')

      expect(game.play).to eq('P1')
    end

    it "returns 'P1' if P1 move = scissors and P2 move = paper" do
      allow(player_1).to receive(:move).and_return('scissors')
      allow(player_2).to receive(:move).and_return('paper')

      expect(game.play).to eq('P1')
    end

    it "returns 'DRAW' if P1 move is the same as P2 move" do
      allow(player_1).to receive(:move).and_return('rock')
      allow(player_2).to receive(:move).and_return('rock')

      expect(game.play).to eq('DRAW')
    end

    it "returns 'P2' if P1 move = rock and P2 move = paper" do
      allow(player_1).to receive(:move).and_return('rock')
      allow(player_2).to receive(:move).and_return('paper')

      expect(game.play).to eq('P2')
    end

    it "returns 'P2' if P1 move = paper and P2 move = scissors" do
      allow(player_1).to receive(:move).and_return('paper')
      allow(player_2).to receive(:move).and_return('scissors')

      expect(game.play).to eq('P2')
    end

    it "returns 'P2' if P1 move = scissors and P2 move = rock" do
      allow(player_1).to receive(:move).and_return('scissors')
      allow(player_2).to receive(:move).and_return('rock')

      expect(game.play).to eq('P2')
    end
  end
end
