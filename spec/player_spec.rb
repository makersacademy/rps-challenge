require 'player'

describe Player2 do

    describe "#random_turn" do
      it "makes random choice to play as the computer" do
        subject = described_class.new
        allow(subject).to receive(:random_turn).and_return("SCISSORS!")
        expect(subject.random_turn).to eq "SCISSORS!"
      end
    end
end
