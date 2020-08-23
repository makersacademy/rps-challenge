require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) {double :player, name: 'narwhal'}
  let(:player_2) {double :player, name: 'horse'}

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq player_2
    end
  end

  desribe '#init' do
    it 'gives a default player_2 name of Hal3000 if no arugment is passed'

    game = subject.init('unicorn')
    expect(game.player_1.name).to eq 'Hal3000'
  end
end