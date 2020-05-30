require_relative '../lib/rps_game.rb'

describe RPSGame do
  subject(:game) { RPSGame.new }

  describe '#random_choice' do
    it 'returns a random option from the array' do
      allow_any_instance_of(Array).to receive(:sample) { "Paper" }
      expect(subject.random_choice).to eq("Paper")
    end
  end

  context 'player wins' do
    describe '#play_game(choice)' do
      it 'returns a statement showing player has won' do
        player_wins_outcomes = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
        player_wins_outcomes.each do |choice, computer_choice|
          allow(game).to receive(:random_choice) { computer_choice }
          expect(game.play_game(choice)).to include("You win")
        end
      end
    end
  end

  context 'computer wins' do
    describe '#play_game(choice)' do
      it 'returns a statement showing computerhas won' do
        choice = 'Rock'
        allow(game).to receive(:random_choice) { "Paper" }
        expect(game.play_game(choice)).to include("You lose")
      end
    end
  end

  context 'draw' do
    describe '#play_game(choice)' do
      it 'returns a statement showing there has been a draw' do
        choice = 'Rock'
        computer_wins = "Computer chose rock. You chose rock. You drew, "
        allow(game).to receive(:random_choice) { "Rock" }
        expect(game.play_game(choice)).to include("You drew")
      end
    end
  end
end
