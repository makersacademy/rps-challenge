require 'player'

describe Player do

  let (:player){ Player.new }

  it 'should be able to choose rock' do
    expect(player.choose(:rock)).to be :rock
  end

  it 'should be able to choose paper' do
    expect(player.choose(:paper)).to be :paper
  end

  it 'should be able to choose scissors' do
    expect(player.choose(:scissors)).to be :scissors
  end

  it 'should give error if anything other than rock, paper or scissors is entered' do
    expect{player.choose('solo')}.to raise_error 'Incorrect option selected'
  end
end
