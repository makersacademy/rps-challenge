require 'rocky'

describe 'Game' do

  let(:game) { Game.new }
  let(:throws) { [:rock, :paper, :scissors] }

  it "takes an input when playing" do
    game.play(:rock)
    expect(game).to respond_to(:play).with(1).argument
  end

  it  "accepts rock/paper/scissors as input" do
    throw_choice = throws.sample
    allow(game).to respond_to(:play).with(1).argument
    expect(game.play(throw_choice)).to e
  end

end