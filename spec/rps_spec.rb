require 'rps'

describe RPS do

  before :each do
    srand 2 # makes CPU always return :rock
  end

  it 'TIE: Player & CPU choose rock' do
    expect(subject.results(:rock)[:result]).to eq :tie
  end

  it 'WIN: Player chooses paper & CPU chooses rock' do
    expect(subject.results(:paper)[:result]).to eq :win
  end

  it 'LOSE: Player chooses paper & CPU chooses rock' do
    expect(subject.results(:scissors)[:result]).to eq :lose
  end

end
