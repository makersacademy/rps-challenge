require 'game_text'

describe GameText do
  subject(:messager) { described_class.new }
  let(:player) { double('player', name: nil) }
  let(:default_message_1) { "Choose from the above!" }
  let(:default_message_2) { "Get on with it m8" }

  describe '#initialize' do
    it 'begins with a default message for player 1' do
      expect(messager.player_1_text).to eq default_message_1
    end
    it 'begins with a default message for player 2' do
      expect(messager.player_2_text).to eq default_message_2
    end
  end
  describe '#update_round_winner' do
    it 'updates the winner of the round' do
      messager.update_round_winner(player)
      expect(messager.round_winner).to eq "#{player.name} wins the round!"
    end
  end

end
