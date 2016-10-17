require 'spec_helper'
require 'player'

describe Player do

  subject {described_class.new("Steve")}
  let(:steve) {double(:name)}

  let(:rock) {double(:weapon, choice: :rock)}
  let(:paper) {double(:weapon, choice: :paper)}
  let(:scissors) {double(:weapon, choice: :scissors)}

  describe '#initialize' do
    it "sets the player's name to the string passed in" do
      expect(subject.name).to eq "Steve"
    end
    it 'initializes an empty array of play history' do
      expect(subject.play_history).to be_empty
    end
    it 'initializes an empty array of outcome history' do
      expect(subject.outcome_history).to be_empty
    end
  end

  describe '#play_history' do
    it 'stores the turns' do
      subject.store_choice(rock)
      expect(subject.play_history.last).to eq rock
    end
  end

  describe '#play_history' do
    it 'stores the turns' do
      subject.store_outcome(true)
      expect(subject.outcome_history.last).to eq true
    end
  end

end
