require 'game'

describe Game do
  subject(:game) {described_class.new('sachin', 'computer')}

  describe "#initialize" do
    it 'game initializes with player' do
      expect(game.player.name).to eq 'sachin'
    end
  end
end