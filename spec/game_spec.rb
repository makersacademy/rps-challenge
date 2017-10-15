require 'game'

describe Game do
  subject {Game.new}
  describe 'Play versus computer  ' do
    context 'Ends in a draw' do
      it 'outputs randomly selected response by computer' do
        array_outputs = ['ROCK', 'SCISSORS', 'PAPER']
        srand(333)
        index = rand(3)
        sampled_response = array_outputs[index]
        response_random = subject.random_response
        expect(response_random).to eq sampled_response
      end
      it 'outputs randomly a different selected response by computer' do
        array_outputs = ['ROCK', 'SCISSORS', 'PAPER']
        srand(339)
        index = rand(3)
        sampled_response = array_outputs[index]
        response_random = subject.random_response
        expect(response_random).to eq sampled_response
      end
    end

    context 'Player wins' do
      it 'Player has Rock, computer has Scissors' do
        allow(subject).to receive(:player_choice) {'ROCK'}
        allow(subject).to receive(:computer_selection) {'SCISSORS'}
        expect(subject.result).to eq :win
      end
      it 'Player has Scissors, computer has Paper' do
        allow(subject).to receive(:player_choice) {'SCISSORS'}
        allow(subject).to receive(:computer_selection) {'PAPER'}
        expect(subject.result).to eq :win
      end
      it 'Player has Paper, computer has Rock' do
        allow(subject).to receive(:player_choice) {'PAPER'}
        allow(subject).to receive(:computer_selection) {'ROCK'}
        expect(subject.result).to eq :win
      end
    end

    context 'Player loses' do
      it 'Computer has Rock, player has Scissors' do
        allow(subject).to receive(:player_choice) {'ROCK'}
        allow(subject).to receive(:computer_selection) {'PAPER'}
        expect(subject.result).to eq :loss
      end
      it 'Computer has Scissors, player has Paper' do
        allow(subject).to receive(:player_choice) {'SCISSORS'}
        allow(subject).to receive(:computer_selection) {'ROCK'}
        expect(subject.result).to eq :loss
      end
      it 'Computer has Paper, player has Rock' do
        allow(subject).to receive(:player_choice) {'PAPER'}
        allow(subject).to receive(:computer_selection) {'SCISSORS'}
        expect(subject.result).to eq :loss
      end
    end
  end 
end
