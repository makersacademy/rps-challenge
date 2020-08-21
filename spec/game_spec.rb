require 'game'

describe Game do

  let(:rock) { double :rock }

  subject(:game) { described_class.new(rock) }

  it 'exists' do
    expect(game).to be_an_instance_of(Game)
  end

end
