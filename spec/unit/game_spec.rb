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
  describe 'computer' do
    it "returns one of RPS at random" do
      # This seed sets the computer's selection to Paper
      srand(1)
      game.computer
      expect(game.computer_choice).to eq("Paper")
    end
  end
  describe 'evaluate_game' do
    it "Player and computer select Paper, return draw screen" do
      # This seed sets the computer's selection to Paper
      srand(1)
      game.computer
      game.update_selection("Paper")
      expect(game.evaluate_game).to eq(:draw)
    end
    it 'Player wins' do
      # This seed sets the computer's selection to Paper
      srand(1)
      game.computer
      game.update_selection("Scissors")
      expect(game.evaluate_game).to eq(:win)
    end
    it 'Player loses' do
      # This seed sets the computer's selection to Paper
      srand(1)
      game.computer
      game.update_selection("Rock")
      expect(game.evaluate_game).to eq(:lose)
    end
  end
end