require 'game'

describe Game do
  subject(:game){described_class.new(player, computer)}
  let(:player) {double(:player, choice: :Rock)}
  let(:computer) {double(:computer, choice: :Paper)}
  it 'checks player is set to @player' do
    expect(game.player).to eq player
  end

  it 'checks PC is set to @computer' do
    expect(game.computer).to eq computer
  end

  it 'checks @result is set to nil by default' do
    expect(game.result).to eq nil
  end

  # it 'checks #get_result is draw' do
  #   game.get_result
  #   expect(game.result).to eq "It's a draw!"
  # end


  # it 'checks instance returns itself' do
  #   expect(game.instance).to eq game
  # end
end
