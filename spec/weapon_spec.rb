require 'weapon'

describe Weapon do

  subject(:rock) { Weapon.new('rock') }
  subject(:paper) { Weapon.new('paper') }
  subject(:scissors) { Weapon.new('scissors') }

  describe '#rock' do
    it 'rock beats scissors' do
      expect(rock.beats(scissors)).to be :Winner
    end 

    it 'rock ties with rock' do
      expect(rock.beats(rock)).to be :Tie
    end 

    it 'rock loses to paper' do
      expect(rock.beats(paper)).to be :Loser
    end 
  end

  describe '#paper' do
    it 'paper loses to scissors' do 
      expect(paper.beats(scissors)).to be :Loser
    end
    
    it 'paper beats rock' do
      expect(paper.beats(rock)).to be :Winner
    end 

    it 'paper tie with paper' do
      expect(paper.beats(paper)).to be :Tie
    end 
  end

  describe '#scissors' do
    it 'scissors loses to rock' do
      expect(scissors.beats(rock)).to be :Loser
    end

    it 'scissors ties scissors' do
      expect(scissors.beats(scissors)).to be :Tie
    end

    it 'scissors beats paper' do
      expect(scissors.beats(paper)).to be :Winner
    end
  end
end
