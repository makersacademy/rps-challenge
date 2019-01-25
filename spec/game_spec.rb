require 'game'

describe Game do

  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }

  it 'Accepts two players as arguments' do
    expect(described_class).to respond_to(:new).with(2).arguments
  end

end
