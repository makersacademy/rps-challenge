require 'game'

describe Game do
  describe '#computer_move' do 
    it "randomly selects a move" do 
      allow(subject).to receive(:computer_move).and_return("Paper")
    end
  end
end
