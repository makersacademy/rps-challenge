require 'game'

describe Game do

  let (:player) { double :player, move: :rock, name: :player }
  let(:computer) { double :computer}
  subject(:game) { described_class.new(player) }

  describe "#initialize" do
    it 'initializes game with a player' do
      expect(game.player).to eq player
    end
  end

  describe "#choose_weapon" do
    it 'stores player weapon choice' do
      game.choose_weapon("rock")
      expect(game.player_weapon).to eq "rock"
    end
  end

  describe "#result" do
    context "when player beats computer" do
      it "should return 'win'" do
        allow(computer).to receive(:choose_weapon).and_return(:scissors)
        expect(game.result).to eq :win
      end
    end
  end
end
