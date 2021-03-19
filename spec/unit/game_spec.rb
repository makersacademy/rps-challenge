require 'game'

describe Game do
  let(:taran) { Player.new("Taran") }
  let(:game) { Game.new(taran) }
  it 'stores a player instance' do
    expect(game.player).to be_kind_of(Player)
  end
  it 'responds to a player selection' do
    expect(taran).respond_to?(:selection)
  end
  describe 'update_selection' do
    it "updates the player's selection in game" do
      selection = "Rock"
      game.update_selection(selection)
      expect(game.selection).to eq("Rock")
    end
  end
end