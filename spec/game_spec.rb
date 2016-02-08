require 'game'

describe Game do

  subject(:game) { described_class.new }


  it { is_expected.to respond_to(:play).with(1).argument }

  it "makes 'rock' lost again paper" do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    choice = Weapons.new('rock')
    expect(game.play('rock')).to eq 'lost'
  end

  it "makes 'rock' win again scissors" do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    choice = Weapons.new('rock')
    expect(game.play('rock')).to eq 'won'
  end

  it "makes 'rock' tie again rock" do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    choice = Weapons.new('rock')
    expect(game.play('rock')).to eq 'tied'
  end

end