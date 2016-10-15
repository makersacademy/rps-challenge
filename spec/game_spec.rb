require 'spec_helper'
require 'game'

describe Game do

  subject {described_class.new(rock, paper)}
  let(:bob) {double(:bob)}
  let(:sally) {double(:sally)}

  let(:rock) {double(:weapon, choice: :rock)}
  let(:paper) {double(:weapon, choice: :paper)}
  let(:scissors) {double(:weapon, choice: :scissors)}

  describe '#initialize' do
    it 'initializes an empty array' do
      expect(subject.submitted_weapons).to be_empty
    end
    it 'has a issntace variable to store the outcome of the game' do
      expect(subject.winner).to be_nil
    end
  end

  describe '#add_submitted_weapons' do
    it 'creates an array of the submitted weapons' do
      expect(subject.add_submitted_weapons).to eq [rock, paper]
    end
  end

  describe '#evaluate' do
    it 'declares rock the winner when up against scissors' do
      game = Game.new(rock, scissors)
      game.add_submitted_weapons
      expect(game.evaluate).to eq :rock
    end
    it 'declares scissors the winner when up against paper' do
      game = Game.new(scissors, paper)
      game.add_submitted_weapons
      expect(game.evaluate).to eq :scissors
    end
    it 'declares paper the winner when up against rock' do
      game = Game.new(paper, rock)
      game.add_submitted_weapons
      expect(game.evaluate).to eq :paper
    end
  end

  # describe '#tie?' do
  #   it 'determines when a game is a tie' do
  #     game = Game.new(rock, rock)
  #     game.add_submitted_weapons
  #     expect(game.tie?).to eq true
  #   end
  # end
  # 
  # describe '#missing_element' do
  #   it 'returns the element that was not used' do
  #     game = Game.new(rock, scissors)
  #     game.add_submitted_weapons
  #     expect(game.missing_element).to eq :paper
  #   end
  # end


end
