require 'game'

describe Game do
  let(:version) { double(:version, name: 'Rock Paper Scissors') }
  let(:version_class) { double(:version_class, new: version) }
  let(:player) { double(:player, name: 'Chris') }
  let(:player_class) { double(:player_class, new: player) }
  let(:computer) { double(:compuer, name: 'Computer') }
  let(:computer_class) { double(:computer_class, new: computer) }
  subject(:subject) { described_class.new('Chris', player_class, computer_class) }
  it 'can store a name' do
    expect(subject.player_1.name).to eq('Chris')
  end
  it 'can set version' do
    subject.version(version_class)
    expect(subject.version_name).to eq('Rock Paper Scissors')
  end
  it 'can return results' do
    allow(subject.player_1).to receive(:move).and_return('Rock')
    allow(subject.player_2).to receive(:move).and_return('Scissors')
    allow(version).to receive(:results).with('Rock', 'Scissors').and_return('You win!')
    expect(version).to receive(:results).with('Rock', 'Scissors').and_return('You win!')

    subject.version(version_class)
    expect(subject.results).to eq('You win!')
  end
end
