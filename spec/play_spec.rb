require 'play'

describe Play do

  describe 'when the move is rock' do
    it 'will initialize with the move' do
      play = Play.new(:rock)
      expect(play.move).to eq(:rock)
    end

    it 'will return an identifying number' do
      play = Play.new(:rock)
      expect(play.number).to eq(10)
    end
  end

  describe 'when the move is paper' do


    it 'will initialize with the move' do
      play = Play.new(:paper)
      expect(play.move).to eq(:paper)
    end

    it 'will return an identifying number' do
      play = Play.new(:paper)
      expect(play.number).to eq(20)
    end
  end

  describe 'when the move is scissors' do


    it 'will initialize with the move' do
      play = Play.new(:scissors)
      expect(play.move).to eq(:scissors)
    end

    it 'will return an identifying number' do
      play = Play.new(:scissors)
      expect(play.number).to eq(30)
    end
  end
end
