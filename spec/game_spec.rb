require 'game'

describe Game do
  subject(:game) {described_class.new(sonny)}
  let(:sonny) {double(:player, choice: :Rock, name: :sonny)}
  let(:robot) {double(:computer, name: :robot)}

  describe "#initialize" do
    it 'initiates a new game with a human player 1' do
      expect(game.player.name).to eq :sonny
    end
  end


end
