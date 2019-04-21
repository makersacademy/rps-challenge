require './lib/player'

describe Player do

  let(:player) { Player.new('Dominic White') }

  describe '#name' do
    it 'returns the same name' do
      expect(player.name).to eq 'DOMINIC WHITE'
    end
  end

  describe '#select_move' do
    it 'recognises move selection' do
      player.select_move('ROCK')
      expect(player.move).to eq 'ROCK'
    end
  end

end
