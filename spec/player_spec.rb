require 'player'

describe Player do
  let(:subject) { Player.new('Pikachu') }

  describe '#choose_rock' do
    it 'picks rock' do
      expect(subject.choose_rock).to eq 'rock'
    end
  end

  describe '#choose_paper' do
    it 'picks paper' do
      expect(subject.choose_paper).to eq 'paper'
    end
  end

  describe '#choose_scissors' do
    it 'picks scissors' do
      expect(subject.choose_scissors).to eq 'scissors'
    end
  end

  # describe 'points' do
  #   it 'returns points at the start of the game' do
  #     expect(subject.points).to eq 0
  #   end
  # end
end
