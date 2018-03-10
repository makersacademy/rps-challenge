require 'player'

describe Player do
  subject(:fake_player1) { double('player', name: "Fake Player 1") }
  subject(:fake_nil_player) { described_class.new }

  subject(:player) { described_class.new(fake_player1.name) }

  context '.initialize' do
    it 'on initialize it should store a name' do
      expect(player.name).to eq(fake_player1.name)
    end

    it 'sets player 2 name as Computer if name is not entered' do
      expect(fake_nil_player.name).to eq('Computer')
    end

    it 'on initialize action should be nil' do
      expect(player.action).to be_nil
    end
  end

  context 'set action' do
    it 'should be able to set action to paper' do
      player.action = 'paper'
      expect(player.action).to eq('paper')
    end

    it 'should be able to set action to rock' do
      player.action = 'rock'
      expect(player.action).to eq('rock')
    end

    it 'should be able to set action to scissors' do
      player.action = 'scissors'
      expect(player.action).to eq('scissors')
    end
  end
end
