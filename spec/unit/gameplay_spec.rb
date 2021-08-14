require 'gameplay.rb'

describe GamePlay do

  let(:computer_choice) { double("double", { rock_paper_scissors: "Scissors" }) }

  subject {described_class.new(computer_choice)}

  let(:player_choice_rock) { "rock" }
  let(:player_choice_paper) { "paper" }
  let(:player_choice_scissors) { "scissors" }

  context 'run game logic to determine if player wins' do
    it "player picks 'rock' computer picks 'scissors'" do
      expect(computer_choice).to receive(:rock_paper_scissors)
      expect(subject.game_result(player_choice_rock)).to eq( "Congrats, you win!" )
    end
  end

  context 'run game logic to determine if tie' do
    it "player picks 'scissors' computer picks 'scissors'" do
      expect(computer_choice).to receive(:rock_paper_scissors)
      expect(subject.game_result(player_choice_scissors)).to eq( "Its a tie!" )
    end
  end

  context 'run game logic to determine if player looses' do
    it "player picks 'paper' computer picks 'scissors'" do
      expect(computer_choice).to receive(:rock_paper_scissors)
      expect(subject.game_result(player_choice_paper)).to eq( "You loose!" )
    end
  end
  
end
