require 'game'

describe Game do

  let(:game){Game.new}
  let(:player){double :player}
  let(:computer){double :computer}

  it 'can know that Paper wins over Rock' do
    allow(player).to receive(:weapon).and_return('Rock')
    allow(computer).to receive(:weapon).and_return('Paper')
    expect(game.result('Rock','Paper')).to eq ('Paper')
  end



end