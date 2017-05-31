require 'game'

describe Game do
  subject(:game) { described_class.new(:rock, :scissors) }
  let(:weapon) { double :weapon }

  it 'has a weapons array' do
    expect(Game::WEAPONS).to be_instance_of(Array)
  end

  it 'has a result' do
    expect(game).to respond_to(:result)
  end

  it 'can check the result' do
    expect(game.check(:rock, :scissors)).to be true
  end

end
