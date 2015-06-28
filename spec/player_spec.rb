require 'player'

describe Player do 
def player; Player.new; end

  it 'can choose between rock, paper, scissors' do
    expect(player.choose :rock).to eq :rock
  end

  it 'cant choose anything other than rock, paper, scissors' do
    expect{ player.choose :sausages }.to raise_error 'Please choose rock, paper or scissors!'
  end

end