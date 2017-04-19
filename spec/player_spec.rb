require 'player'

describe Player do
  subject(:player) { described_class.new(player_name) }
  let(:Oggie) { double(:player_name) }

  xit 'initialized with a username' do
    expect(player).to have(Oggie) 
  end
end
