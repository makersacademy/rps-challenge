require 'game.rb'

describe Game do

  let(:item_1) { double :item }
  let(:item_2) { double :item }
  let(:player_2) { double :player, item: item_2, choose: 'Rock' }
  let(:player_1) { double :player, item: item_1, choose: 'Paper' }
  let(:subject) { Game.new(player_1, player_2) }

  it 'returns win if player_1 beats player_2' do
    allow(item_1).to receive(:beats).and_return(true)
    expect(subject.play(item_1)).to eq Game::WIN
  end

  it 'returns lose if player_2 beats player_1' do
    allow(item_1).to receive(:beats).and_return(false)
    allow(item_2).to receive(:beats).and_return(true)
    expect(subject.play(item_1)).to eq Game::LOSE
  end

  it 'returns draw if neither player beats the other' do
    allow(item_1).to receive(:beats).and_return(false)
    allow(item_2).to receive(:beats).and_return(false)
    expect(subject.play(item_1)).to eq Game::DRAW
  end

end
