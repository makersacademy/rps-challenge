require './models/rps'
require './models/player'
require './models/cpu'

describe Rps do

  describe '#moves' do

    it 'should initialize with an array containing rps' do
      expect(subject.available_moves).to eq(["Rock", "Paper", "Scissors"])
    end

  end

  describe '#decide_result' do

    it 'should show rock beats scissors' do
      expect(subject.decide_result("Rock", "Scissors")).to eq "Rock"
    end

    it 'should show scissors beats paper' do
      expect(subject.decide_result("Scissors", "Paper")).to eq "Scissors"
    end

    it 'should show paper beats rock' do
      expect(subject.decide_result("Paper", "Rock")).to eq "Paper"
    end

    it 'should show scissors beats paper' do
      expect(subject.decide_result("Paper", "Scissors")).to eq "Scissors"
    end

    it 'should show a draw' do
      expect(subject.decide_result("Scissors", "Scissors")).to eq "draw"
    end

  end
end
