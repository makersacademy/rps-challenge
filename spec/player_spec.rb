require 'player'

describe Player do
  subject(:bobo) { Player.new('Bobo') }

  describe '#name' do
    it 'returns the name' do
      expect(bobo.name).to eq 'Bobo'
    end
  end

  describe '#select_move' do
    it 'returns a move' do
      bobo.select_move('rock')
      expect(bobo.move).to eq 'rock'
    end
  end

end
