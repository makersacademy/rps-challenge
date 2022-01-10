require 'player'

describe Player do
  let(:player) { described_class.new }

  it 'has "GameBot as a deafult name' do
    expect(player.name).to eq "GameBot"
  end
end
