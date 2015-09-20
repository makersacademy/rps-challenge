require_relative '../lib/player.rb'

describe Player do

  it 'responds to method rock' do
    is_expected.to respond_to :rock
  end

  it 'puts rock in the player move array' do
    subject.rock
    expect(subject.move).to include("rock")
  end

  it 'responds to method paper' do
    is_expected.to respond_to :paper
  end

  it 'puts paper in the player move array' do
    subject.paper
    expect(subject.move).to include("paper")
  end

  it 'responds to method scissors' do
    is_expected.to respond_to :scissors
  end

  it 'puts scissors in the move array' do
    subject.scissors
    expect(subject.move).to include("scissors")
  end
end
