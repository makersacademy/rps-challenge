require 'weapons'

describe Weapons do

  subject(:rock) {Weapons.new('rock')}
  subject(:scissors) {Weapons.new('scissors')}
  subject(:paper) {Weapons.new('paper')}

  describe 'rules of the game' do
    it 'makes rock win against scissors' do
      expect(rock.beats?(scissors)).to be true
    end
    it 'makes rock lose against paper' do
      expect(rock.beats?(paper)).to be false
    end
    it 'makes rock tie against rock' do
      expect(rock.beats?(rock)).to be false
    end
    it 'makes scissors tie against scissors' do
      expect(scissors.beats?(scissors)).to be false
    end
    it 'makes scissors win against paper' do
      expect(scissors.beats?(paper)).to be true
    end
    it 'makes scissors lose against rock' do
      expect(scissors.beats?(rock)).to be false
    end
    it 'makes paper lose against scissors' do
      expect(paper.beats?(scissors)).to be false
    end
    it 'makes paper tie against paper' do
      expect(paper.beats?(paper)).to be false
    end
    it 'makes paper win against rock' do
      expect(paper.beats?(rock)).to be true
    end
  end

end