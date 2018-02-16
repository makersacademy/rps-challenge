require 'player'

describe Player do

  subject(:player) { described_class.new('Name') }

  context 'when instatiated' do
    it 'takes a string parameter and passes it to the @name attribute' do
      expect(player.name).to eq 'Name'
    end
  end

  describe '#weapon' do
    it 'accepts "rock", "paper" or "scissors" as a weapon' do
      player.weapon('rock')
      expect(player.weapon).to eq 'rock'
      player.weapon('paper')
      expect(player.weapon).to eq 'paper'
      player.weapon('scissors')
      expect(player.weapon).to eq 'scissors'
    end
  end

end
