require 'player'

describe Player do
  subject (:player) { Player.new('Chris', 'Rock') }
  context 'name method' do
    it 'responds to the name method' do
      expect(player).to respond_to(:name)
    end

    it 'returns the name given' do
      expect(player.name).to eq('Chris')
    end

    it 'returns the choice that was made' do
      expect(player.choice).to eq('Rock')
    end
  end
end
