require 'player'

describe Player do
  let(:player1) { Player.new('Frankie') }
  let(:player2) { Player.new('Computer') }

  describe 'initialize' do
    it 'returns the name' do
      expect(player1.name).to eq 'Frankie'
      expect(player2.name).to eq 'Computer'
    end
  end

  describe 'computer' do
    it 'makes a random choice' do
      expect(Player::CHOICE_ARRAY).to receive(:sample).and_return('Rock')
      expect(player2.rand_choice).to eq('Rock')
    end
  end
end
