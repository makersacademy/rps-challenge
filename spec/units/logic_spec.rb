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
      srand(45)
      expect(game.calculate_winner("SCISSORS")).to eq "Noone"
      srand(50)
      expect(game.calculate_winner("ROCK")).to eq "Noone"
      srand(1)
      expect(game.calculate_winner("PAPER")).to eq "Noone"
    end

    it "puts Tanya as computer won" do
      srand(2)
      game.add_names("Ben")
      srand(45)
      expect(game.calculate_winner("PAPER")).to eq "Tanya"
      srand(50)
      expect(game.calculate_winner("SCISSORS")).to eq "Tanya"
      srand(1)
      expect(game.calculate_winner("ROCK")).to eq "Tanya"
    end

    it "puts Ben as Ben won" do
      game.add_names("Ben")
      srand(45)
      expect(game.calculate_winner("ROCK")).to eq "Ben"
      srand(50)
      expect(game.calculate_winner("PAPER")).to eq "Ben"
      srand(1)
      expect(game.calculate_winner("SCISSORS")).to eq "Ben"
    end
  end
end
