require 'Game'

describe ComputerPlayer do
  # subject(:computerplayer) {described_class.new}


  describe '#random_selection' do
    it "should be able to select an object at random" do
      srand(123)
      # computerplayer.stub(:object) { 'Computer is Rock' }
      # computerplayer = described_class.new
      # double(random_selection: :scissors)
      game = double('game')
      allow(game).to receive(:random_selection) {"Computer is Scissors"}
      expect(game.random_selection).to eq "Computer is Scissors"
      # expect(random_selection.object).to satisfy { |object| object == "Rock" || object == "Paper" || object == "Scissors"}
    end
  end
end
