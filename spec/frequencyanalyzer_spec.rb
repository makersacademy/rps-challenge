require 'frequencyanalyzer'

describe FrequencyAnalyzer do
  subject(:frequency_analyzer) {described_class.new(favours_scissors)}
    let(:favours_scissors) {[:scissors,:scissors,:scissors,:scissors,:scissors,:paper,:rock,:paper,:rock,:paper]}
  context "when passed a history, the analyzer:" do
      it "inspects the history for a favoured hand" do
        expect(frequency_analyzer.favoured_hand?).to include :scissors
      end
      it "counts the occurence of each hand in history" do
        expect(frequency_analyzer.occurence_of_each_hand).to contain_exactly(3, 2, 5)
      end
      it "calculates the frequency of each hand" do
        subject.occurence_of_each_hand
        expect(frequency_analyzer.calculate_frequency).to contain_exactly(0.3, 0.2, 0.5)
      end
      it "returns the most frequent hand if it appears over 50%" do
        expect(frequency_analyzer.mode_hand).to eq :scissors
      end
    end


end