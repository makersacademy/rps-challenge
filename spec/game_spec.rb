require './lib/game.rb'

describe Game do

  describe '#set_session' do
    it 'creates a new instance of self and assigns it to an instance variable' do
      Game.set_session
      expect(Game.session).to be_an_instance_of Game
    end
  end

  describe '#session' do
    let(:player) { double(:player) }
    it 'accepts new player instances and assigns them to Game instance' do
      allow(player).to receive(:name).and_return(:player_name)
      Game.set_session
      Game.session.player_one = player
      expect(Game.session.player_one.name).to eq :player_name
    end
  end

  describe '#result' do
    
  end
end
