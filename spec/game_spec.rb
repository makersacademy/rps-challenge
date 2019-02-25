require 'game'

describe Game do
  describe '#result' do

    describe 'when player plays Rock' do
      let(:player_choice) { "rock" }

      it 'and computer plays Rock' do
        opponent_choice = "rock"
        expect(Game.result(player_choice, opponent_choice)).to eq :draw
      end
  
      it 'and computer plays Paper' do
        opponent_choice = "paper"
        expect(Game.result(player_choice, opponent_choice)).to eq :lose
      end
  
      it 'and computer plays Scissors' do
        opponent_choice = "scissors"
        expect(Game.result(player_choice, opponent_choice)).to eq :win
      end
    end

    describe 'when player plays Paper' do
      let(:player_choice) { "paper" }

      it 'and computer plays Rock' do
        opponent_choice = "rock"
        expect(Game.result(player_choice, opponent_choice)).to eq :win
      end
  
      it 'and computer plays Paper' do
        opponent_choice = "paper"
        expect(Game.result(player_choice, opponent_choice)).to eq :draw
      end
  
      it 'and computer plays Scissors' do
        opponent_choice = "scissors"
        expect(Game.result(player_choice, opponent_choice)).to eq :lose
      end
    end

    describe 'when player plays Scissors' do
      let(:player_choice) { "scissors" }

      it 'and computer plays Rock' do
        opponent_choice = "rock"
        expect(Game.result(player_choice, opponent_choice)).to eq :lose
      end
  
      it 'and computer plays Paper' do
        opponent_choice = "paper"
        expect(Game.result(player_choice, opponent_choice)).to eq :win
      end
  
      it 'and computer plays Scissors' do
        opponent_choice = "scissors"
        expect(Game.result(player_choice, opponent_choice)).to eq :draw
      end
    end

  end
end