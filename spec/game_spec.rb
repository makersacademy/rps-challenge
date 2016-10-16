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
    it 'declares a tie when the same weapons are used' do
      game = Game.new(paper, paper)
      game.add_submitted_weapons
      expect(game.evaluate).to eq :tie
    end
  end

  describe '#set_status' do
    it 'tells a losing weapon it has lost' do
      loser_rock = Weapon.new(:rock)
      winner_paper = Weapon.new(:paper)
      game = Game.new(loser_rock, winner_paper)
      game.add_submitted_weapons
      game.evaluate
      game.set_statuses
      expect(loser_rock.won).to eq false
    end
    it 'tells a  winning losing weapon it has won' do
      loser_rock = Weapon.new(:rock)
      winner_paper = Weapon.new(:paper)
      game = Game.new(loser_rock, winner_paper)
      game.add_submitted_weapons
      game.evaluate
      game.set_statuses
      expect(winner_paper.won).to eq true
    end
    it 'tells both weapons it is a tie' do
      tie_rock = Weapon.new(:rock)
      other_rock = Weapon.new(:rock)
      game = Game.new(tie_rock, other_rock)
      game.add_submitted_weapons
      game.evaluate
      game.set_statuses
      expect(tie_rock.won).to eq :tie
    end
  end
  
end
