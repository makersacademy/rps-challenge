require 'game_messager'

describe GameMessager do
  subject(:messager) { described_class.new }
  let(:player) { double 'player'}
  describe '#update_round_winner' do
    it 'updates the winner of the round' do
      messager.update_round_winner(player)
      expect(messager.round_winner).to eq "#{player} wins the round!"
    end
  end

end
