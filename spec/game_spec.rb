require 'game'

describe Game do
  subject(:game) {described_class.new(player_name, computer_defense)}
  let(:player_name) {double(:player_name)}
  let(:computer_defense) {double(:computer_defense)}


  describe '#player' do
    it 'retrieves the first player' do
      expect(game.player_name).to eq player_name
    end
  end

end
