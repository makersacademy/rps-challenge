require 'player'

describe Player, :player do
  let(:subject) { Player.new('Sam') }

  describe '#name' do
    it 'Returns the player name' do
      expect(subject.name).to eq 'Sam'
    end
  end
end
