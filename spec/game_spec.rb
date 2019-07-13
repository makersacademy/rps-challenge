require 'game'

describe Game do
  let(:name) { 'Will' }
  subject(:game) { described_class.new(name) }

  describe '#result' do
    it 'returns draw if weapons the same' do
      game.select_weapon(game.computer_weapon)
      expect(game.result).to eq('draw')
    end

    it 'Confirms player win if their weapon beats the computers' do
      game.select_weapon('paper')
      expect(game).to receive(:rand).and_return(0)
      expect(game.result).to eq('win')
    end

    it 'Confirms computer wins if their weapon beats the players' do
      game.select_weapon('paper')
      expect(game).to receive(:rand).and_return(2)
      expect(game.result).to eq('lose')
    end
  end

  describe 'confirm_winner' do
    it 'confirms who has won the game' do
      game.select_weapon(game.computer_weapon)
      expect(game.confirm_winner).to eq('Rock is equal to Rock. Draw')
    end
  end
end
