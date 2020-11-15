require 'game'

describe Game do
  subject(:game) { described_class.new('Alex', 'Bill') }
  let(:bot) { double :bot, name: 'Vanadium' }
  it { expect(Game).to respond_to(:new).with(2).arguments }

  it 'tests the players passed in' do
    expect(game.player_1).to eq 'Alex'
  end

  it 'identifies a draw' do
    game.single_match('Scissors')
    allow(game).to receive(:sample_move) { 'Scissors' }
    expect(game.single_match('Scissors')).to eq 'Draw!'
  end

  it 'identifies a single player win' do
    game.single_match('Scissors')
    allow(game).to receive(:sample_move) { 'Paper' }
    expect(game.single_match('Scissors')).to eq 'You won!'
  end

  it 'identifies a multi-player draw' do
    allow(game.player_1).to receive(:name) { 'Alex' }
    allow(game.player_2).to receive(:name) { 'Bill' }
    expect(game.mp_match('Scissors', 'Scissors')).to eq 'Draw!'
  end 

  it 'identifies a multi-player win' do
    allow(game.player_1).to receive(:name) { 'Alex' }
    expect(game.mp_match('Scissors', 'Paper')).to eq 'Alex won!'
  end 
end
