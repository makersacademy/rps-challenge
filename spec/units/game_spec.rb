require 'game'

describe Game do

  subject(:game) { Game.new(name) }
  let(:name) { 'Veronica' }

  it 'takes a name argument on initialisation' do
    expect(Game).to respond_to(:new).with(1).argument
  end

  it 'stores the name given' do
    expect(game.name).to eq(name)
  end

  describe '#self.create(name)' do
    it 'creates an instance of Game' do
      expect(Game).to receive(:new).once.with(name)
      Game.create(name)
    end
  end

  describe '#self.instance' do
    it 'returns the game instance' do
      Game.create(name)
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end
end
