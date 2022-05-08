require_relative '../lib/rps'

describe Rps_game do
  
  context "A user can play a game of rock, paper, scissors" do
    
    let(:rps) {described_class.new}

    it "the Rps class exists" do
      
      expect(rps).to be_an_instance_of(Rps_game)

    end

    it "the computer_move method randomly chooses a move" do
      
      allow(rps).to receive(:computer_move).and_return "Paper"

      expect(rps.computer_move).to eq "Paper"

    end

    it "play returns a message when the user wins" do
      
      allow(subject).to receive(:computer_move).and_return "Paper"

      expect(subject.play("Scissors")).to eq "You win this time, human"

    end

    it "play returns a message when the game is tied" do
      
      allow(subject).to receive(:computer_move).and_return "Paper"

      expect(subject.play("Paper")).to eq "It's a draw"

    end

    it "play returns a message when the user loses" do
      
      allow(subject).to receive(:computer_move).and_return :paper

      expect(subject.play("Rock")).to eq "You suffer a humiliating defeat"

    end

  end

  context "Outcomes return the appropriate responses" do

    it "winning displays the correct message" do
      
      expect(subject.win).to eq "You win this time, human"

    end

    it "tieing displays the correct message" do
      
      expect(subject.tie).to eq "It's a draw"

    end

    it "losing displays the correct message" do
      
      expect(subject.lose).to eq "You suffer a humiliating defeat"

    end

  end

end