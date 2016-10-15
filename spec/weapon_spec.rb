require 'spec_helper'
require 'weapon'

describe Weapon do

  subject { described_class.new }

  let(:rock) {double(:rock)}
  let(:paper) {double(:paper)}
  let(:scissors) {double(:scissors)}

  # describe '#initialize' do
  #   it 'initilizes with the choice of weapon' do
  #     weapon = Weapon.new(rock)
  #     expect(weapon.choice).to eq rock
  #   end
  # end

  describe '#initialize' do
    it 'initilizes with a blank choice of weapon' do
      expect(subject.choice).to be_nil
    end
    it 'has a field to store whether the weapon won or lost, set to nil' do
      expect(subject.won).to be_nil
    end
  end

  describe '#choose_rock' do
    it 'allows you to choose choose rock' do
      subject.choose_rock
      expect(subject.choice).to eq :rock # pretty sure this is a pointless test
    end
  end

  describe '#choose_paper' do
    it 'allows you to choose choose rock' do
      subject.choose_paper
      expect(subject.choice).to eq :paper
    end
  end

  describe '#choose_scissors' do
    it 'allows you to choose choose scissors' do
      subject.choose_scissors
      expect(subject.choice).to eq :scissors
    end
  end

  describe '#computer_choice' do
    it 'selects on behalf of the computer' do
      allow(subject).to receive(:random_choice).and_return 1
      subject.computer_choice
      expect(subject.choice).to eq :rock
    end
  end

  describe '#set_win' do
    it 'sets the won status to true' do
      subject.set_win
      expect(subject.won).to eq true
    end
  end

  describe '#set_lose' do
    it 'sets the won status to false' do
      subject.set_lose
      expect(subject.won).to eq false
    end
  end

  describe '#set_tie' do
    it 'sets the won status to nil' do
      subject.set_tie
      expect(subject.won).to eq nil
    end
  end

end
