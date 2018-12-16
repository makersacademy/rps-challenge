require 'player'

describe Player do 
    let(:player_name) { 'Garnet' }
    let(:player) { Player.new(player_name) }

    it '#initialize requires a name to be passed which is set to @name' do 
      expect(player.name).to eql(player_name)
    end

    it '#initialize should set it up with an @move set to false' do 
    expect(player.move).to eql(false)
  end
end