require 'player'

describe Player do
  subject(:bradley) {Player.new("Bradley")}

  it 'can be an instance of Player' do
    expect(bradley).to be_instance_of Player
  end

  context 'Player can have selected name' do

    subject(:player1) {Player.new("John")}

    it 'Has correct name' do
      expect(player1.name).to eq "John"
    end

  end

  context 'computer' do
    it 'Sets default name to computer when no name given' do
      player = Player.new
      expect(player.name).to eq Player::DEFAULT_NAME
    end
    it 'sets player state: computer to true' do
      player = Player.new
      expect(player.computer).to eq true
    end
  end
end 