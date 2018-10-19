require './lib/model.rb'

describe 'model' do

  before(:each) { @player_2_move = machine_move }

  it 'should calculate a random computer move' do
    array = ["rock", "paper", "scissors"]
    expect(array).to include(@player_2_move)
  end

  it 'should give a losing result when rock meets paper' do
    rock("paper")
    expect(@result).to eq "bad luck, you lost!"
  end

  it 'should give a losing result when paper meets scissors' do
    paper("scissors")
    expect(@result).to eq "bad luck, you lost!"
  end

  it 'should give a losing result when scissors meets rock' do
    scissors("rock")
    expect(@result).to eq "bad luck, you lost!"
  end

  it 'should give a draw result when rock meets rock' do
    rock("rock")
    expect(@result).to eq "it's a tie!"
  end
    
  it 'should give a draw result when paper meets paper' do
    paper("paper")
    expect(@result).to eq "it's a tie!"
  end

  it 'should give a draw result when scissors meets scissors' do
    scissors("scissors")
    expect(@result).to eq "it's a tie!"
  end

  it 'should give a winning result when rock meets scissors' do
    rock("scissors")
    expect(@result).to eq "congratulations, you won!"
  end
    
  it 'should give a winning result when paper meets rock' do
    paper("rock")
    expect(@result).to eq "congratulations, you won!"
  end

  it 'should give a winningresult when scissors meets paper' do
    scissors("paper")
    expect(@result).to eq "congratulations, you won!"
  end

end
