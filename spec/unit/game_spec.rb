require 'game'

describe Game do

  it 'rock beats scissors' do
    computer = instance_double('Computer', name: 'Computer', move: :rock)
    user = instance_double('Player', name: "Gawain", move: :scissors)
    subject.play(computer, user)
    expect(subject.result).to eq "Computer wins!"
  end

  it 'scissors beats paper' do
    computer = instance_double('Computer', name: 'Computer', move: :scissors)
    user = instance_double('Player', name: "Gawain", move: :paper)
    subject.play(computer, user)
    expect(subject.result).to eq "Computer wins!"
  end

  it 'paper beats rock' do
    computer = instance_double('Computer', name: 'Computer', move: :rock)
    user = instance_double('Player', name: "Gawain", move: :paper)
    subject.play(computer, user)
    expect(subject.result).to eq "Gawain wins!"
  end

  it 'rock v rock is a draw' do
    computer = instance_double('Computer', name: 'Computer', move: :rock)
    user = instance_double('Player', name: "Gawain", move: :rock)
    subject.play(computer, user)
    expect(subject.result).to eq "It's a draw!"
  end

end