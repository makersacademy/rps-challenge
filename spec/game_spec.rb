require 'game'

describe Game do
  let(:name) { 'Will' }
  let(:computer_weapon) { :rock }
  subject(:game) { described_class.new(name, computer_weapon) }

  describe '#result' do
    it 'returns draw if weapons the same' do
      game.select_weapon(game.computer_weapon)
      expect(game.result).to eq(:draw)
    end

    it 'Confirms player win if their weapon beats the computers' do
      game.select_weapon(:paper)
      expect(game.result).to eq(:win)
    end

    it 'Confirms computer wins if their weapon beats the players' do
      game.select_weapon(:scissors)
      expect(game.result).to eq(:lose)
    end
  end

  describe 'confirm_winner' do
    it 'confirms who has won the game or if a draw' do
      game.select_weapon(game.computer_weapon)
      expect(game.confirm_winner).to eq("#{game.computer_weapon.capitalize} is equal to #{game.computer_weapon.capitalize}. Draw")
    end
  end
end
