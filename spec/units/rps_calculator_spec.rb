require 'rps_calculator'


describe RpsCalculator do
  subject(:paper) { described_class.new("Paper", "Charlie")}
  subject(:rock) { described_class.new("Rock", "Charlie")}

  describe '#message' do
    it "tells the user they've won" do
      paper.stub(:opponent) { 'rock' }
      expect(paper.message).to eq "Well done, Charlie. You won!"
    end

    it 'tells the user they lost' do
      paper.stub(:opponent) { 'scissors' }
      expect(paper.message).to eq "Unlucky, Charlie. Unfortunately for you, scissors never fails!"
    end

    it 'declares a draw if both weapons are the same' do
      paper.stub(:opponent) { 'paper' }
      expect(paper.message).to eq "The game is a tie!"
    end

    it 'desclares draw if both rock' do
      rock.stub(:opponent) { 'rock' }
      expect(rock.message).to eq "The game is a tie!"
    end
  end
end
