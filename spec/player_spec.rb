require 'player'

describe Player do

  subject(:player) { Player.new('Jimmy') }
  subject(:computer) { Player.new('COMPUTER')}

  describe '#player_name' do

    it 'sets player_name' do
      expect(player.name).to eq 'Jimmy'
    end
  end

  describe '#computer_move' do
    it 'records @computer_move' do
      allow(computer).to receive(:set_move).and_return 'ROCK'
      expect(computer.set_move).to eq 'ROCK'
    end
  end

  describe '#player_move' do
    it 'records @players_move' do
      allow(player).to receive(:set_move).and_return 'ROCK'
      expect(player.set_move).to eq 'ROCK'
    end
  end
end
