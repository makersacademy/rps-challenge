require 'player_bot'

describe PlayerBot do
  describe '#choice' do
    it 'returns a random choice of Rock, Paper or Scissors' do
      expect(subject).to respond_to(:choice)
    end
  end
end
