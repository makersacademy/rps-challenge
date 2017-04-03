require 'player'

describe Player do
  subject(:player) {described_class.new(name)}
  let(:name) {double :name}


  it 'assigns the player a name' do
    expect(player.name).to eq name
  end

  describe 'HANDS' do
    it 'returns an array of hand possibilities' do
      expect(Player::HANDS).to eq [:rock, :paper, :scissors]
    end
  end

  describe '#robot_choose' do
    it 'selects a hand for the computer player' do
      player.robot_choose
      expect(Player::HANDS).to include(player.hand)
    end
  end

end
