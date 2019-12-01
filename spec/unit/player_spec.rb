require 'player'

describe Player do
  subject{Player.new("Henlo")}

  it 'should have a name' do
    expect(subject).to have_attributes name: "Henlo"
  end

  it 'should change move to rock' do
    expect{ subject.rock }.to change{ subject.move }.to "Rock"
  end

  it 'should change move to paper' do
    expect{ subject.paper }.to change{ subject.move }.to "Paper"
  end

  it 'should change move to scissors' do
    expect{ subject.scissors }.to change{ subject.move }.to "Scissors"
  end
end
