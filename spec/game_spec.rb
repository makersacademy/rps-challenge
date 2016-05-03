require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { spy :player }
  let(:player_2) { spy :player }

  it 'retrieves player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'retrieves player 2' do
    expect(game.player_2).to eq player_2
  end

  it 'switches player turn' do
    turn = player_1
    expect(game.switch_turns).to eq player_2
  end

  it 'returns player choice' do
    allow(player_1).to receive(:choice) { "Rock" }
    expect(game.player_choice(player_1)).to eq "Rock"
  end

  it 'picks a value' do
    allow(player_1).to receive(:choose) { "Rock" }
    expect(game.pick_choice("Rock")).to eq "Rock"
  end

  it 'checks for winner' do
    allow(player_1).to receive(:choice) { "Rock" }
    allow(player_2).to receive(:choice) { "Scissors" }
    expect(game.check_winner).to eq player_1
  end

  it 'checks for tie' do
    allow(player_1).to receive(:choice) { "Rock" }
    allow(player_2).to receive(:choice) { "Rock" }
    expect(game.check_winner).to eq nil
  end

  context 'resets the game' do
    it 'resets player 1' do
      allow(player_1).to receive(:choose).with(nil)
      game.reset
      expect(player_1).to have_received(:choose).with(nil)
    end

    it 'resets player 2' do
      allow(player_2).to receive(:choose).with(nil)
      game.reset
      expect(player_2).to have_received(:choose).with(nil)
    end
  end

end