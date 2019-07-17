require 'rps_calculator'


describe RpsCalculator do
  let(:no_name_player) { double :player, name: ""}
  let(:charlie) { double :player, name: "Charlie"}

  subject(:paper) { described_class.new("Paper", charlie)}
  subject(:rock) { described_class.new("Rock", charlie)}
  subject(:no_name_calculator) { described_class.new("Rock", no_name_player) }

  describe '#message' do
    it "tells the user they've won" do
      paper.stub(:opponent) { 'rock' }
      allow(charlie).to receive(:no_name) { "Charlie" }
      expect(paper.message).to eq "Well done, Charlie. You won!"
    end

    it 'tells the user they lost' do
      paper.stub(:opponent) { 'scissors' }
      allow(charlie).to receive(:no_name) { "Charlie" }
      expect(paper.message).to eq "Unlucky, Charlie. Unfortunately for you, scissors never fails!"
    end

    it 'declares a draw if both weapons are the same' do
      paper.stub(:opponent) { 'paper' }
      allow(charlie).to receive(:no_name) { "Charlie" }
      expect(paper.message).to eq "The game is a tie!"
    end

    it 'desclares draw if both rock' do
      rock.stub(:opponent) { 'rock' }
      allow(charlie).to receive(:no_name) { "Charlie" }
      expect(rock.message).to eq "The game is a tie!"
    end
  end

  describe '#message' do
    it 'extracts the no_name method from the player class' do
      no_name_calculator.stub(:opponent) { 'scissors' }
      allow(no_name_player).to receive(:no_name) { "Gladiator" }
      expect(no_name_calculator.message).to eq 'Well done, Gladiator. You won!'
    end
  end



end
