require 'game'
describe Game do
  describe 'random move from computer' do
    it 'returns a random move from computer' do
      expect(["ROCK", "PAPER", "SCISSORS"]).to include(subject.computer_move)
    end
  end
end
