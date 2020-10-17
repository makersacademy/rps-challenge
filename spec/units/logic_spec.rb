require './app/models/logic.rb'

describe Game do
  subject(:game) { Game.new }

  context '#add_names' do
    it 'adds inputted player\'s name' do
      expect(game.add_names("Ben")).to eq "Ben"
    end
  end

  context '#calculate_winner' do
    it "puts noone as it's a draw" do
      play_logic(game, 45, "SCISSORS")
      expect(game.print_winner).to eq "Noone"
      play_logic(game, 50, "ROCK")
      expect(game.print_winner).to eq "Noone"
      play_logic(game, 1, "PAPER")
      expect(game.print_winner).to eq "Noone"
    end

    it "puts Tanya as computer won" do
      srand(2)
      game.add_names("Ben")
      play_logic(game, 45, "PAPER")
      expect(game.print_winner).to eq "Tanya"
      play_logic(game, 50, "SCISSORS")
      expect(game.print_winner).to eq "Tanya"
      play_logic(game, 1, "ROCK")
      expect(game.print_winner).to eq "Tanya"
    end

    it "puts Ben as Ben won" do
      game.add_names("Ben")
      play_logic(game, 45, "ROCK")
      expect(game.print_winner).to eq "Ben"
      play_logic(game, 50, "PAPER")
      expect(game.print_winner).to eq "Ben"
      play_logic(game, 1, "SCISSORS")
      expect(game.print_winner).to eq "Ben"
    end
  end
end
