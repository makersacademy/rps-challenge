require 'player'

describe Player do 
    let(:player) { Player.new(PLAYER_NAME, PLAYER_MOVE) }

    it '#initialize requires a name to be passed which is set to @name' do 
      expect(player.name).to eql(PLAYER_NAME)
    end

    it '#initialize should set it up with an @move set to player Name' do 
    expect(player.move).to eql(PLAYER_MOVE)
  end

  context 'singleton class' do
    # not sure what to test for here
    it 'storees an instance of ' do
    end
  end
end