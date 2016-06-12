describe OutcomeFormatter do
  
  let(:player_1) { double(:player, name: 'Gino') }
  let(:player_2) { double(:player, name: 'Tina') }

  it '#format_outcome returns -draw- if passed 0' do
    expect(subject.format_outcome(0, player_1, player_2)).to eq("Draw") 
  end

  it '#format_outcome returns -player 2 wins- if passed 1' do
    expect(subject.format_outcome(1, player_1, player_2)).to eq("#{player_2.name} wins") 
  end

  it '#format_outcome returns -player 1 wins- if passed -1' do
    expect(subject.format_outcome(-1, player_1, player_2)).to eq("#{player_1.name} wins") 
  end

end
