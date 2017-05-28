require 'ComputerPlayer'

describe ComputerPlayer do
  subject(:computerplayer) {described_class.new}


  describe '#random_selection' do
    it "should be able to select an object at random" do
      # srand(123)
      computerplayer.stub(:object) { 'Computer is Rock' }
      expect([:Rock, :Paper, :Scissors]).to eq "Computer is Rock"
      # expect(random_selection.object).to satisfy { |object| object == "Rock" || object == "Paper" || object == "Scissors"}
    end
  end
end
