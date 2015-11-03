require 'opponent'

describe Opponent do
  subject(:opponent) {described_class.new}
  xit "can choose a hand" do
  allow(opponent).to receive(:rand).with(3).and_return(0)
    expect(opponent.choose_hand).to eq :paper
  end
  # describe "#favoured_hand?" do
  #   subject(:opponent) {described_class.new(favours_scissors)}
  #   let(:favours_scissors) {[:scissors,:scissors,:scissors,:scissors,:scissors,:paper,:rock,:paper,:rock,:paper]}
  #   it "inspects the history for a favoured hand" do
  #     expect(subject.favoured_hand?).to include :scissors
  #   end
  #   it "counts the occurence of each hand in history" do
  #     expect(subject.occurence_of_each_hand).to contain_exactly(3, 2, 5)
  #   end
  #   it "calculates the frequency of each hand" do
  #     subject.occurence_of_each_hand
  #     expect(subject.calculate_frequency).to contain_exactly(0.3, 0.2, 0.5)
  #   end
  #   it "recommends a hand if a hand appears 50% or more" do
  #     expect(subject.choose_hand).to eq :rock
  #   end
  # end

end