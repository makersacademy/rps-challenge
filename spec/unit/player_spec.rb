require 'player'

describe Player do
  let(:player_1) { Player.new('sandy') }
  it 'takes the player name as parameter' do
    expect(Player).to respond_to(:new).with(1)
  end

  describe '#name' do
    it 'knows its name' do
      expect(player_1.name).to eq 'sandy'
    end
  end

  describe '#choice' do
    it "sets and stores the player's choice" do
      player_1.set_choice('Rock')
      expect(player_1.choice).to eq 'Rock'
    end
  end
end
