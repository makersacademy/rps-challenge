require 'game'
describe Game do
  subject { described_class.new("Player") }

  it 'accepts two player instances' do
    expect(subject.player).to eq "Player"
  end
end