require 'game'

describe Game do

  describe 'shape_1 wins' do
    it 'shape_1 win with Rock' do
      expect(subject.run('Rock', 'Scissors')).to eq('Rock')
    end
    it 'shape_1 win with Paper' do
      expect(subject.run('Paper', 'Rock')).to eq('Paper')
    end
    it 'shape_1 win with Scissors' do
      expect(subject.run('Scissors', 'Paper')).to eq('Scissors')
    end
  end

  describe 'shape_1 wins' do
    it 'shape_1 win with Rock' do
      expect(subject.run('Rock', 'Scissors')).to eq('Rock')
    end
    it 'shape_1 win with Paper' do
      expect(subject.run('Paper', 'Rock')).to eq('Paper')
    end
    it 'shape_1 win with Scissors' do
      expect(subject.run('Scissors', 'Paper')).to eq('Scissors')
    end
  end

  describe 'there is no winner' do
    it 'Rock and Rock' do
      expect(subject.run('Rock', 'Rock')).to eq("equal shape")
    end
    it 'Paper and Paper' do
      expect(subject.run('Paper', 'Paper')).to eq("equal shape")
    end
    it 'Scissors and Scissors' do
      expect(subject.run('Scissors', 'Scissors')).to eq("equal shape")
    end
  end
end
