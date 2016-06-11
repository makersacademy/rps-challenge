describe OutcomeFormatter do

  it '#format_outcome returns -draw- if passed 0' do
    expect(subject.format_outcome(0)).to eq('draw') 
  end

  it '#format_outcome returns -player 2 wins- if passed 1' do
    expect(subject.format_outcome(1)).to eq('player 2 wins') 
  end

  it '#format_outcome returns -player 1 wins- if passed -1' do
    expect(subject.format_outcome(-1)).to eq('player 1 wins') 
  end

end
