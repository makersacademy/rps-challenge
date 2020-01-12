require 'rps_extended'

describe RPSExtended do
  describe '#result' do
    it 'returns string when player 1 wins, 3 weapons' do
      expect(RPSExtended.result(name_1: 'Chris', move_1: 1, name_2: 'James', move_2: 2, num_weapons: 3)).to eq("Chris Wins!")
    end
    it 'returns string when player 2 wins, 3 weapons' do
      expect(RPSExtended.result(name_1: 'Chris', move_1: 2, name_2: 'James', move_2: 1, num_weapons: 3)).to eq("James Wins!")
    end
    it 'returns string when player 2 wins, 5 weapons' do
      expect(RPSExtended.result(name_1: 'Chris', move_1: 1, name_2: 'James', move_2: 5, num_weapons: 5)).to eq("James Wins!")
    end
    it 'returns string when player 2 wins, 7 weapons' do
      expect(RPSExtended.result(name_1: 'Chris', move_1: 7, name_2: 'James', move_2: 2, num_weapons: 7)).to eq("James Wins!")
    end
    it 'returns string with default player names when none given' do
      expect(RPSExtended.result(move_1: 1, move_2: 2, num_weapons: 3)).to eq("Player 1 Wins!")
    end
    it 'returns string with draw if inputs are the same' do
      expect(RPSExtended.result(move_1: 1, move_2: 1, num_weapons: 3)).to eq("It's a Draw!")
    end
    it 'raises error if move number is out of range' do
      expect{RPSExtended.result(move_1: 4, move_2: 1, num_weapons: 3)}.to raise_error('Move out of range!')
    end
    it 'raises error if weapons number does not follow rules' do
      expect{RPSExtended.result(move_1: 1, move_2: 2, num_weapons: 4)}.to raise_error('Number of weapons does not meet rules!')
    end
  end
end
