require './lib/game'
require './lib/player'

describe Game do

  describe '#result, v1: rock' do
    let(:player1) { double :player1, name: "marija", choice: "rock" }
    subject(:game) { described_class.new(player1) }
    context 'player chooses rock' do
      it 'player1 wins' do
        player_win = "#{player1.name} is the victor."
        srand(3) # computer selects scissors
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq player_win
      end
      it 'its a tie' do
        tie_message = "Both have lost as none have won."
        srand(2) # computer selects rock
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq tie_message
      end
      it 'player1 wins' do
        comp_win = "#{player1.name} has suffered defeat."
        srand(1) # computer selects paper
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq comp_win
      end
    end
  end

  describe '#result, v2: scissors' do
    let(:player1) { double :player1, name: "marija", choice: "scissors" }
    subject(:game) { described_class.new(player1) }
    context 'player chooses scissors' do
      it 'player1 wins' do
        player_win = "#{player1.name} is the victor."
        srand(1) # computer selects paper
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq player_win
      end
      it 'its a tie' do
        tie_message = "Both have lost as none have won."
        srand(3) # computer selects scissors
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq tie_message
      end
      it 'player1 wins' do
        comp_win = "#{player1.name} has suffered defeat."
        srand(2) # computer selects rock
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq comp_win
      end
    end
  end

  describe '#result, v3: paper' do
    let(:player1) { double :player1, name: "marija", choice: "paper" }
    subject(:game) { described_class.new(player1) }
    context 'player chooses scissors' do
      it 'player1 wins' do
        player_win = "#{player1.name} is the victor."
        srand(2) # computer selects rock
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq player_win
      end
      it 'its a tie' do
        tie_message = "Both have lost as none have won."
        srand(1) # computer selects paper
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq tie_message
      end
      it 'player1 wins' do
        comp_win = "#{player1.name} has suffered defeat."
        srand(3) # computer selects scissors
        allow(game).to receive(player1.choice)
        game.computer_choice
        game.results
        expect(game.message).to eq comp_win
      end
    end
  end

end
