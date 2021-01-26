require './lib/game'

describe Game do 

  subject(:game) { Game.new(p1) }
  let(:p1) { double :player }

  it 'should accept player one on initialize' do
    expect(subject.player_1).to eq(p1)
  end 

end
