require 'game'

describe Game do
  describe '#win' do
    it "let's users know who won the round" do
      subject = Game.new 'Mary', "Computer"
      expect(subject.win).to eq("Aaaaaand it's... a draw *crickets*")
    end
  end
end
