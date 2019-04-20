require 'game'

describe Game do
  let(:subject) { described_class.create("Ayelisha") }

  it 'stores a players name' do
    expect(subject.player_name).to eq "Ayelisha"
  end
end
