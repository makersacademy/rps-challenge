require 'spec_helper'
require 'player'

describe Player do
  subject { described_class.new('Tom') }
  describe '#name' do
    it 'returns the player\'s name' do
      expect(subject.name).to eq 'Tom'
    end
  end

  describe '#is_computer' do
    it 'defaults to human' do
      expect(subject.is_computer).to eq false
    end
    it 'can be ser to computer on initialize' do
      computer = described_class.new('computer', true)
      expect(computer.is_computer).to eq true
    end
  end

  describe '#win' do
    it 'records a win' do
      expect{ subject.win }.to change{ subject.games_won }.by 1
    end
  end

  describe '#draw' do
    it 'records a draw' do
      expect{ subject.draw }.to change{ subject.games_drawn }.by 1
    end
  end

  describe '#lose' do
    it 'records a loss' do
      expect{ subject.lose }.to change{ subject.games_lost }.by 1
    end
  end

  describe '#games_played' do
    it 'returns the number of games played as total of wins, losses and draws' do
      subject.win
      2.times{ subject.draw }
      4.times{ subject.lose }
      expect(subject.games_played).to eq 7
    end
  end
end