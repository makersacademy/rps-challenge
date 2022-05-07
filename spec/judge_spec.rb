require 'judge'

describe Judge do

  describe '#decision' do

    it 'player wins if beats computer on rock-paper-scissors game ("rock")' do
      erlantz = double("player", choice: "rock", name: "Erlantz")
      computer = double("player", choice: "scissors", name: "Computer")
      expect(subject.decision(erlantz,computer)).to eq "Erlantz, you won this time. Congratulations!! Do you want to play again?"
    end

    it 'player loses if computer beats them on rock-paper-scissors game ' do
      erlantz = double("player", choice: "rock", name: "Erlantz")
      computer = double("player", choice: "paper", name: "Computer")
      expect(subject.decision(erlantz,computer)).to eq "Erlantz, you lost this time but please, try again"
    end

    it 'player wins if beats computer on rock-paper-scissors game ("paper")' do
      erlantz = double("player", choice: "paper", name: "Erlantz")
      computer = double("player", choice: "rock", name: "Computer")
      expect(subject.decision(erlantz,computer)).to eq "Erlantz, you won this time. Congratulations!! Do you want to play again?"
    end

    it 'player wins if beats computer on rock-paper-scissors game ("scissors")' do
      erlantz = double("player", choice: "scissors", name: "Erlantz")
      computer = double("player", choice: "paper", name: "Computer")
      expect(subject.decision(erlantz,computer)).to eq "Erlantz, you won this time. Congratulations!! Do you want to play again?"
    end

    it 'it is a draw if both have the same choice' do
      erlantz = double("player", choice: "rock", name: "Erlantz")
      computer = double("player", choice: "rock", name: "Computer")
      expect(subject.decision(erlantz,computer)).to eq "It is a draw. Do you want to play again?"
    end

  end

end
