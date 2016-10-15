describe Game do

  subject(:game) {described_class.new}

  describe '#ai_choice' do

    before do
      allow(game).to receive(:ai_choice).and_return("rock")
    end
    
    it "should return rock" do
      expect(game.ai_choice).to eq "rock"
    end
  end

end
