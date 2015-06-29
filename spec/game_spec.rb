require './app/game' 

describe  Game do 
   # let(:game) {Game.new :player, :computer}
  it {is_expected.to respond_to :player.with(0).argument}

  it {is_expected.to respond_to :computer.with(1).argument}

  it 'should respond to intro' do
    intro = subject.intro "Play Rock-Paper-Scissors!
    Rock breaks scissors, paper covers rock, and scissors cuts paper." 
    expect(intro).to eq "Play Rock-Paper-Scissors!
    Rock breaks scissors, paper covers rock, and scissors cuts paper."
  end


end