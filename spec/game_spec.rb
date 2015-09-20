require 'game'

  describe Game do

    context "When the computer's move is rock" do
      before(:each) do
        allow(subject).to receive(:generate_move){:rock}
      end

      it "Player wins when their move is paper" do
        computer_move = subject.generate_move
        player_move = :paper
        expect(subject.outcome(player_move, computer_move)).to eq "You win!"
      end

      it "Player loses when their move is scissors" do
        computer_move = subject.generate_move
        player_move = :scissors
        expect(subject.outcome(player_move, computer_move)).to eq "You lose!"
      end

      it "It's a draw when the player's move is rock" do
       computer_move = subject.generate_move
       player_move = :rock
       expect(subject.outcome(player_move, computer_move)).to eq "It's a draw!"
      end
    end

    context "When the computer's move is paper" do
      before(:each) do
        allow(subject).to receive(:generate_move){:paper}
      end

      it "Player wins when their move is scissors" do
        computer_move = subject.generate_move
        player_move = :scissors
        expect(subject.outcome(player_move, computer_move)).to eq "You win!"
      end

      it "Player loses when their move is rock" do
        computer_move = subject.generate_move
        player_move = :rock
        expect(subject.outcome(player_move, computer_move)).to eq "You lose!"
      end

      it "It's a draw when the player's move is paper" do
       computer_move = subject.generate_move
       player_move = :paper
       expect(subject.outcome(player_move, computer_move)).to eq "It's a draw!"
      end
    end

    context "When the computer's move is scissors" do
      before(:each) do
        allow(subject).to receive(:generate_move){:scissors}
      end

      it "Player wins when their move is rock" do
        computer_move = subject.generate_move
        player_move = :rock
        expect(subject.outcome(player_move, computer_move)).to eq "You win!"
      end

      it "Player loses when their move is paper" do
        computer_move = subject.generate_move
        player_move = :paper
        expect(subject.outcome(player_move, computer_move)).to eq "You lose!"
      end

      it "It's a draw when the player's move is scissors" do
       computer_move = subject.generate_move
       player_move = :scissors
       expect(subject.outcome(player_move, computer_move)).to eq "It's a draw!"
      end
    end

  end
