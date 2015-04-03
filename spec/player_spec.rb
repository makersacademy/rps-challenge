require 'player'

describe Player do
  let(:player) { described_class.new(name: "Arfah", browser: "chrome") }

  it 'can have a name' do
    expect(player.name).to eq "Arfah"
  end

  it 'can have a browser' do
    expect(player.browser).to eq "chrome"
  end

end
