require 'game'

describe Game do
  subject(:game){described_class.new("Will", "PC")}
  it 'checks Will is set to @player' do
    expect(game.player).to eq "Will"
  end

  it 'checks PC is set to @computer' do
    expect(game.computer).to eq "PC"
  end

  # it 'checks instance returns itself' do
  #   expect(game.instance).to eq game
  # end
end
