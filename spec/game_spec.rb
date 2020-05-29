require './lib/game'
require './lib/player'

describe Game do

  describe '#result, v1: player chose rock' do
    let(:player1) { double :player1, name: "marija" }
    subject(:game) { described_class.new(player1) }
      it 'player1 wins, computer chose scissors' do
        player_win = "#{player1.name} is the victor."
        srand(3) # computer selects scissors
        game.player_choice("rock")
        game.computer_choice
        game.results
        expect(game.message).to eq player_win
      end
      it 'its a tie, computer chose rock' do
        tie_message = "Both have lost as none have won."
        srand(2) # computer selects rock
        game.player_choice("rock")
        game.computer_choice
        game.results
        expect(game.message).to eq tie_message
      end
      it 'player1 wins, computer chose paper' do
        comp_win = "#{player1.name} has suffered defeat."
        srand(1) # computer selects paper
        game.player_choice("rock")
        game.computer_choice
        game.results
        expect(game.message).to eq comp_win
      end
    end

  describe '#result, v2: player chose scissors' do
    let(:player1) { double :player1, name: "marija"}
    subject(:game) { described_class.new(player1) }
      it 'player1 wins, computer chose paper' do
        player_win = "#{player1.name} is the victor."
        srand(1) # computer selects paper
        game.player_choice("scissors")
        game.computer_choice
        game.results
        expect(game.message).to eq player_win
      end
      it 'its a tie, computer chose scissors' do
        tie_message = "Both have lost as none have won."
        srand(3) # computer selects scissors
        game.player_choice("scissors")
        game.computer_choice
        game.results
        expect(game.message).to eq tie_message
      end
      it 'player1 wins, computer chose rock' do
        comp_win = "#{player1.name} has suffered defeat."
        srand(2) # computer selects rock
        game.player_choice("scissors")
        game.computer_choice
        game.results
        expect(game.message).to eq comp_win
      end
    end

  describe '#result, v3: player chose paper' do
    let(:player1) { double :player1, name: "marija" }
    subject(:game) { described_class.new(player1) }
      it 'player1 wins, computer chose rock' do
        player_win = "#{player1.name} is the victor."
        srand(2) # computer selects rock
        game.player_choice("paper")
        game.computer_choice
        game.results
        expect(game.message).to eq player_win
      end
      it 'its a tie, computer chose paper' do
        tie_message = "Both have lost as none have won."
        srand(1) # computer selects paper
        game.player_choice("paper")
        game.computer_choice
        game.results
        expect(game.message).to eq tie_message
      end
      it 'player1 wins, computer chose scissors' do
        comp_win = "#{player1.name} has suffered defeat."
        srand(3) # computer selects scissors
        game.player_choice("paper")
        game.computer_choice
        game.results
        expect(game.message).to eq comp_win
      end
    end

end
