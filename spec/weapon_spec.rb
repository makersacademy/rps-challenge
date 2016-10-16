require 'spec_helper'
require 'weapon'

describe Weapon do

  subject { described_class.new("PAPER") }

  let(:rock) {double(:rock)}
  let(:paper) {double(:paper)}
  let(:scissors) {double(:scissors)}

  describe '#create_weapon_one' do
    it 'creates an instance of weapon' do
      weapon = Weapon.create_weapon_one("PAPER")
      expect(weapon).to be_an_instance_of(Weapon)
    end
  end

  describe '#create_weapon_two' do
    it 'creates an instance of weapon' do
      weapon = Weapon.create_weapon_two("SCISSORS")
      expect(weapon).to be_an_instance_of(Weapon)
    end
  end

  describe '#initialize' do
    it 'initilizes with the choice of weapon' do
      expect(subject.choice).to eq "PAPER"
    end
    it 'has a field to store whether the weapon won or lost, set to nil' do
      expect(subject.won).to be_nil
    end
  end

  describe '#format_choice' do
    it 'turns the button inputs into the right format' do
    subject.format_choice
    expect(subject.choice).to eq :paper
  end
  end

  describe '#computer_choice' do
    it 'selects on behalf of the computer' do
      allow(Game::R_P_S).to receive(:sample).and_return :rock
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
    it 'sets the won status to a tie' do
      subject.set_tie
      expect(subject.won).to eq :tie
    end
  end

end
