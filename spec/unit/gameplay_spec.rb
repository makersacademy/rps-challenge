require 'gameplay.rb'

describe GamePlay do

  let(:player_choice_rock) { "rock" }
  let(:player_choice_paper) { "paper" }
  let(:player_choice_scissors) { "scissors" }

  context 'computer randomly selects either, Rock, Paper or Scissors' do
    it '#random_number generates a random number between 1 and 3' do
      expect(subject.random_number).to be_between(1, 3).inclusive
    end

    it '#rps can return Rock' do
      allow(subject).to receive(:random_number) { 1 }
      expect(subject.computer_rps).to eq("Rock")
    end

    it '#rps can return Paper' do
      allow(subject).to receive(:random_number) { 2 }
      expect(subject.computer_rps).to eq("Paper")
    end

    it '#rps can return Scissors' do
      allow(subject).to receive(:random_number) { 3 }
      expect(subject.computer_rps).to eq("Scissors")
    end
  end

  context 'run game logic to determine if player wins' do
    it "player picks 'rock' computer picks 'scissors'" do
      allow(subject).to receive(:computer_rps) { "Scissors" }
      expect(subject.game_result(player_choice_rock)).to eq( "Congrats, you win!" )
    end
  end

  context 'run game logic to determine if tie' do
    it "player picks 'scissors' computer picks 'scissors'" do
      allow(subject).to receive(:computer_rps) { "Scissors" }
      expect(subject.game_result(player_choice_scissors)).to eq( "Its a tie!" )
    end
  end

  context 'run game logic to determine if player looses' do
    it "player picks 'paper' computer picks 'scissors'" do
      allow(subject).to receive(:computer_rps) { "Scissors" }
      expect(subject.game_result(player_choice_paper)).to eq( "You loose!" )
    end
  end
  
end
