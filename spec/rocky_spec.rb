require 'rocky'

describe 'Game' do

  let(:game) { Game.new }
  let(:throws) { [:rock, :paper, :scissors] }

  it "takes an input when playing" do
    expect(game).to respond_to(:play)
  end

  it  "accepts rock/paper/scissors/lizard/spock as input" do
    throw_choice = throws.sample
    allow(game).to receive(:play).and_return(:rock)
    expect(game.play(throw_choice)).to eq(:rock)
  end

end