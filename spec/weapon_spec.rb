require 'weapon'

describe Weapons do

  describe 'CHOICES' do
    it 'holds a hash of weapons' do
      expect(Weapons::CHOICES).to be_a(Hash)
    end
    describe 'rock' do
      it 'has rock' do
        expect(Weapons::CHOICES).to include(:rock)
      end
      it 'has the correct value for rock' do
        expect(Weapons::CHOICES[:rock]).to be 0
      end
    end
    describe 'paper' do
      it 'has paper' do
        expect(Weapons::CHOICES).to include(:paper)
      end
      it 'has the correct value for paper' do
        expect(Weapons::CHOICES[:paper]).to be 1
      end
    end
    describe 'scissors' do
      it 'has scissors' do
        expect(Weapons::CHOICES).to include(:scissors)
      end
      it 'has the correct value for scissors' do
        expect(Weapons::CHOICES[:scissors]).to be 2
      end
    end
    describe 'lizard' do
      it 'has lizard' do
        expect(Weapons::CHOICES).to include(:lizard)
      end
      it 'has the correct value for rock rock' do
        expect(Weapons::CHOICES[:lizard]).to be 3
      end
    end
    describe 'spock' do
      it 'has spock' do
        expect(Weapons::CHOICES).to include(:spock)
      end
      it 'has the correct value for rock rock' do
        expect(Weapons::CHOICES[:spock]).to be 4
      end
    end
  end

  describe '#choose' do
    it 'returns a value for a weapon key' do
      expect(subject.choose('rock')).to eq 0
    end
  end
end
