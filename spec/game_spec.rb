require 'game'
describe Game do
  let(:player_one) { double(:player_one, move: 'rock', username: 'Nerdpuff') }
  let(:player_two) { double(:player_two, move: 'scissors', username: 'AI') }
  subject { described_class.new(player_one, player_two) }
  
  describe '#initialize' do
    it 'takes two players and saves them' do
      expect { described_class.new(player_one, player_two) }.to_not raise_error
    end
  end

  describe '#calculate_winner' do
    it 'works out if the game has a winner' do
      expect(subject.calculate_winner).to eq([player_one, player_two])
    end
  end

  describe '#generate_message' do
    it 'creates a message with winnner, loser, and moves' do
      msg = 'Nerdpuff beat AI with rock vs scissors!'
      expect(subject.generate_message).to eq(msg)
    end

    it 'returns its a tie! if both play the same hand' do
      msg = "It's a tie!"
      game = described_class.new(player_one, player_one)
      expect(game.generate_message).to eq(msg)
    end
  end
end