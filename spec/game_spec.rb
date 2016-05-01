require 'game'

describe Game  do
  subject(:game) {described_class.new(player, machine)}

  let(:player) { double :player, name: name, weapon: weapon}
  let(:machine) {double :machine, choose_weapon: choose_weapon}
  let(:name) {double :name}
  let(:weapon) {double :ROCK}
  let(:choose_weapon) {double :ROCK}

  context 'when initialized' do
    it 'has a first player' do
      expect(game.player).to eq player
    end

    xit 'has a second player' do
      expect(game.machine).to eq Machine.new
    end
  end

  it 'shows player option' do
    expect(game.player_option).to eq player.weapon
  end

  it 'shows machine_option' do
    allow(game).to receive(:machine_option.to_s).and_return :ROCK
    expect(game.machine_option).to eq :ROCK

  end

  describe 'end of game ' do
    before do
      allow(game).to receive(:player_option.to_s).and_return :ROCK
    end
    context 'it is a draw' do
      it ' returns draw' do
      allow(game).to receive(:machine_option.to_s).and_return :ROCK
      expect(game.win).to eq "DRAW!"
      end
    end

    context 'player wins' do
      it 'returns 2' do
      allow(game).to receive(:machine_option.to_s).and_return :SCISSORS
      expect(game.win).to eq "#{player.name} wins!"
      end
    end

      context 'machine wins' do
        it 'returns 1' do
        allow(game).to receive(:machine_option.to_s).and_return :PAPER
        expect(game.win).to eq "Machine wins!"
        end
      end
  end
end
