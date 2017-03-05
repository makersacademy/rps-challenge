require 'player'

describe Player do
  subject(:player){Player.new('Susie')}

  it 'knows its own name' do
    expect(player.name).to eq 'Susie'
  end

  it 'knows its score' do
    expect(player.score).to eq 0
  end

  it 'score increases after winning' do
    player.adjust_score(5)
    expect(player.score).to eq 5
  end
  
end
