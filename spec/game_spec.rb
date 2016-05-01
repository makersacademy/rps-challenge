require 'game'

describe Game  do
  subject(:game) {described_class.new(player, machine)}

  let(:player) { double :player, name: name}
  let(:machine) {double :machine}
  let(:name) {double :name}

  context 'when initialized' do
    it 'has a first player' do
      expect(game.player).to eq player
    end

    xit 'has a second player' do
      expect(game.machine).to eq Machine.new
    end
  end

  describe 'end of game ' do
    context 'when it is a draw' do
      it ' returns draw' do
      allow(game).to receive(:player_option.to_s).and_return :ROCK
      allow(game).to receive(:machine_option.to_s).and_return :ROCK
      expect(game.win).to eq "DRAW!"
      end
    end

    context 'when player wins' do
      it 'returns 2' do
      allow(game).to receive(:player_option.to_s).and_return :ROCK
      allow(game).to receive(:machine_option.to_s).and_return :SCISSORS
      expect(game.win).to eq "#{player.name} wins!"
      end
    end

      context 'when machine wins' do
        it 'returns 1' do
        allow(game).to receive(:player_option.to_s).and_return :ROCK
        allow(game).to receive(:machine_option.to_s).and_return :PAPER
        expect(game.win).to eq "Machine wins!"
        end
      end
  end
end
