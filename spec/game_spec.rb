require 'spec_helper'
require 'game'

describe Game do

  subject {described_class.new(bob)}
  let(:bob) {double(:bob)}
  let(:sally) {double(:sally)}

  # let(:rock) {double(:rock)}
  # let(:paper) {double(:paper)}
  # let(:scissors) {double(:scissors)}

  describe '#initialize' do
    it 'receives a player' do
      expect(subject.player_one).to eq bob
    end
    it 'defaults to the computer being player 2' do
      expect(subject.player_two).to eq :the_computer
    end
    it 'sets player two as the other player if one is entered' do
      game = described_class.new(bob, sally)
      expect(game.player_two).to eq sally
    end
  end

  describe '#evaluate' do
    it 'declares rock the winner when up against scissors' do
      rock_wins = [:rock, :scissors]
      expect(subject.evaluate(rock_wins)).to eq :rock
    end
    it 'declares scissors the winner when up against paper' do
      scissors_win = [:scissors, :paper]
      expect(subject.evaluate(scissors_win)).to eq :scissors
    end
    it 'declares paper the winner when up against rock' do
      paper_wins = [:paper, :rock]
      expect(subject.evaluate(paper_wins)).to eq :paper
    end
  end

  describe '#tie?' do
    it 'determines when a game is a tie' do
      tied_game = [:rock, :rock]
      expect(subject.tie?(tied_game)).to eq true
    end
  end

  describe '#rock' do
    it 'determines whether a rock was one of the choices' do
      rock_array = [:rock, :scissors]
      expect(subject.rock?(rock_array)).to eq true
    end
  end

  describe '#rock' do
    it 'determines whether scissors was one of the choices' do
      rock_array = [:rock, :scissors]
      expect(subject.scissors?(rock_array)).to eq true
    end
  end

  describe '#missing_element' do
    it 'returns the element that was not used' do
      scissors_wins = [:scissors, :paper]
      expect(subject.missing_element(scissors_wins)).to eq :rock
    end
  end
end
