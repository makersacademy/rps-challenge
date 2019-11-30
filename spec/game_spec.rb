require 'game'

describe Game do

  describe '#generate_move' do
    it "should return either rock, paper or scissors" do
      srand(2)
      expect(subject.generate_move).to eq 'Rock'
    end
  end
end
