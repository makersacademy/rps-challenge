require 'results'

describe Results do

  subject(:test_results) { described_class.new}
  let(:scenario) { {
    rock_scissors: :rock,
    rock_paper: :paper,
    rock_rock: :draw,
    scissors_paper: :scissors,
    scissors_scissors: :draw,
    scissors_rock: :rock,
    paper_paper: :draw,
    paper_rock: :paper,
    paper_scissors: :scissors,
  }
}

  describe '#initialize' do

    it 'should create scenarios array to store all possible moves' do
      expect(test_results.scenarios).to eq scenario
    end
  end

  describe '#get_result' do

    it 'should return draw when given :rock :rock' do
      expect(test_results.get_result(:rock, :rock)).to eq :draw
    end

  end


end
