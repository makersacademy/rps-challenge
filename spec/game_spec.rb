require 'game'

describe Game do
  context '#winner'
    it 'can return the winning choice' do
      expect(subject.result(:paper, :rock)).to eq(:win)
    end

    it 'can return a draw' do
      expect(subject.result(:paper, :paper)).to eq(:draw)
    end

    it 'can return the losing choice' do
      expect(subject.result(:rock, :paper)).to eq(:lose)
    end
end