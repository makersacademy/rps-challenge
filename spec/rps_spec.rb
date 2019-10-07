require 'rps'

describe RPS do
  context '#win' do
    it 'returns player 1 as winner' do
      rps = RPS.new('rock', 'scissors')
      expect(rps.winner).to eq :player1
    end

    it 'returns player 2 as winner' do
      rps = RPS.new('rock', 'paper')
      expect(rps.winner).to eq :player2
    end
  end

  context '#draw' do
    it 'it returns a draw' do
      rps = RPS.new('rock', 'rock')
      expect(rps.winner).to eq :draw
    end
  end
end
