require 'game'

describe Game do
  subject(:game) {described_class.new(tam, weapon, computer)}
  let(:tam) {double :player, name: :Tam }
  let(:weapon) {double :weapon}
  let(:computer) {double :computer}

  describe '#player_name' do
    it 'Should show name of player' do
      expect(game.player_name).to eq(:Tam)
    end
  end

end
