require 'game'

describe Game do

  subject(:game) {described_class.new(user)}
  let(:user) { double(:user) }

  it "should be initialized with a player" do
    expect(game.user).to eq user
  end

end
