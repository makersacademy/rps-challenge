require 'opponent'

describe Opponent do
  subject(:opponent) {described_class}
  let(:frequency_analyzer_klass) {double(:frequency_analyzer_klass)}
  let(:pattern_matcher_klass) {double(:pattern_matcher_klass)}

  context "When choosing a hand the opponent:" do

    it "can choose a random hand when there is no history" do
      allow(opponent).to receive(:rand).with(3).and_return(0)
      allow(frequency_analyzer_klass).to receive(:run).with(nil).and_return(nil)
      expect(opponent.choose_hand(nil, frequency_analyzer_klass)).to eq :paper
    end

    # it "passes history to PatternMatcher to improve its guess" do
    #   expect(pattern_matcher_klass).to receive(:run).with(:history)
    #   opponent.choose_hand(:history, frequency_analyzer_klass)
    # end

    it "passes history to FrequencyAnalyzer to improve its guess" do
      expect(frequency_analyzer_klass).to receive(:run).with(:history)
      opponent.choose_hand(:history, frequency_analyzer_klass)
    end

    it "guesses the statistically most favourable hand" do
      allow(frequency_analyzer_klass).to receive(:run).with(:lots_of_papers).and_return(:paper)
      expect(opponent.choose_hand(:lots_of_papers, frequency_analyzer_klass)).to eq :scissors
    end

  end

end