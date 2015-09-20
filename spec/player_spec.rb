require 'player'

describe Player do

  it 'should be able to choose rock' do
    player = Player.new
    expect(player.choose(:rock)).to be :rock
  end

  it 'should be able to choose paper' do
    player = Player.new
    expect(player.choose(:paper)).to be :paper
  end

  it 'should be able to choose scissors' do
    player = Player.new
    expect(player.choose(:scissors)).to be :scissors
  end

  it 'should give error if anything other than rock, paper or scissors is entered' do
    player = Player.new
    expect{player.choose('solo')}.to raise_error 'Incorrect option selected'
  end
end
