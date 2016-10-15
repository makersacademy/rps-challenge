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
    it "defaults the to 'the Computer' if no string passed" do
      computer_player = Player.new
      expect(computer_player.name).to eq "the Computer"
    end
    it 'initializes an empty array of play history' do
      expect(subject.play_history).to be_empty
    end
  end

  describe 'game history' do
    it 'stores the turns' do
      subject.store_choice(rock)
      expect(subject.play_history.last).to eq rock
    end
  end

end
