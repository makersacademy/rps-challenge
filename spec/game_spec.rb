require 'game'

describe Game do
  subject(:game) { described_class.new(player_name, computer) }
  let(:player_name) { double 'Player'}
  let(:computer) { double 'Computer' }

  describe '#initialize' do
    it "creates a new game with a player" do
      expect(game.player_name).to eq player_name
    end
  end




end