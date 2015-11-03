require 'frequencyanalyzer'

describe FrequencyAnalyzer do

  subject(:frequency_analyzer) {described_class}
  let(:mode_paper) {[:paper, :paper, :paper, :paper, :paper, :paper, :rock, :scissors]}
  let(:no_majority) {[:paper, :paper, :paper, :rock, :rock, :rock, :scissors, :scissors, :scissors]}
  let(:empty_array) {[]}

  context "when passed a history, the analyzer:" do

      it "will calculate the mode" do
        expect(frequency_analyzer.run(mode_paper)).to eq :paper
      end

      it "returns nil when there is no majority hand" do
        expect(frequency_analyzer.run(no_majority)).to eq nil
      end

      it "returns nil when there is no history" do
        expect(frequency_analyzer.run(empty_array)).to eq nil
      end

  end

end