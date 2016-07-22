require 'game'

describe Game do

  let(:player_name){double :player_name}
  subject(:game){described_class.new(player_name)}

  context '#initialize' do
    it 'creates a new player' do
      expect(subject.player).to be_an_instance_of(Player)
    end
  end
end
