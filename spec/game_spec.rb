require 'game'
describe Game do
  subject(:fake_player) { double(:name => 'Alex') }
  subject(:fake_computer) { double(:name => 'computer') }
  subject(:game) { described_class.new(fake_player, fake_computer) }


  describe "#player" do
    it "returns the game with player's name" do
      expect(game.player.name).to eq 'Alex'
    end
  end

  describe "#computer" do
    it "returns the game with computer's name" do
      expect(game.computer.name).to eq 'computer'
    end
  end

  describe "#move" do
    it 'stores player option and computer option' do
      fake_player_option = double()
      fake_computer_option = double()

      game.move(fake_player_option, fake_computer_option)
      expect(game.game_array).to eq([fake_player_option, fake_computer_option])
    end
  end

  describe "#result" do
    it 'returns player name if true' do
      fake_game_array = ['Rock', 'Scissors']
      expect(game.result(fake_game_array)).to eq(game.player.name)
    end

    it 'returns No one if is draw' do
      fake_game_array = ['Rock', 'Rock']
      expect(game.result(fake_game_array)).to eq("No one")
    end

    it 'returns Computer if is false' do
      fake_game_array = ['Scissors', 'Rock']
      expect(game.result(fake_game_array)).to eq(game.computer.name)
    end

  end

end
