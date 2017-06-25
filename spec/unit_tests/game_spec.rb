require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  describe '#.create' do
    it 'creates a new instance of game' do
      Game.create(player)
      expect(Game.instance).to respond_to(:player)
    end
  end

  describe '#initialize' do
    it 'is initialized with a player' do
      expect(game.player).to_not be_nil
    end

    it 'is initialized with a new computer' do
      expect(game.computer).to_not be_nil
    end
  end

  describe '#result' do
    it "redirects to draw page if player's and computer's weapons are the same" do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :scissors }
      expect(game.result).to eq :draw
    end

    it "redirects to win page if player's weapon beats computer's weapon" do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :paper }
      expect(game.result).to eq :win
    end

    it "redirects to lose page if computer's weapon beats player's weapon" do
      allow(player).to receive(:weapon) { :scissors }
      allow(computer).to receive(:weapon) { :rock }
      expect(game.result).to eq :lose
    end
  end
end
