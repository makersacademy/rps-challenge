require 'standard_rules'

describe StandardRules do
  let(:hands) {[:rock, :paper, :scissors]}
  subject(:standard_rules) {described_class.new}
    context 'Hands' do
      it {is_expected.to respond_to(:hands)}

      it 'starts with a list of possible hands' do
        expect(standard_rules.hands).to eq hands
      end
    end
  context 'Playing a game' do

    it {is_expected.to respond_to(:play).with(2).arguments}

    it 'is a draw when both players play the same hand' do
      expect(standard_rules.play(:rock, :rock)).to eq :draw
    end
   it "Player 1's Rock blunts Player 2's Scissors" do
      expect(standard_rules.play(:rock, :scissors)).to eq :win
   end
   it "Player 2's Rock blunts Player 1's Scissors" do
      expect(standard_rules.play(:scissors, :rock)).to eq :lose
   end
   it "Player 1's Paper covers Player 2's Rock" do
      expect(standard_rules.play(:paper, :rock)).to eq :win
   end
   it "Player 2's Paper covers Player 1's Rock" do
      expect(standard_rules.play(:rock, :paper)).to eq :lose
   end
   it "Player 1's Scissors cut Player 2's Paper" do
      expect(standard_rules.play(:scissors, :paper)).to eq :win
   end
   it "Player 2's Scissors Player 1's Paper" do
      expect(standard_rules.play(:paper, :scissors)).to eq :lose
   end

  end
end

