require 'game'

describe Game do
  let(:version) { double(:version, name: 'Rock Paper Scissors') }
  let(:version_class) { double(:version_class, new: version) }
  subject(:subject) { described_class.new('Chris') }
  it 'can store a name' do
    expect(subject.name).to eq('Chris')
  end
  it 'can set version' do
    subject.version(version_class)
    expect(subject.version_name).to eq('Rock Paper Scissors')
  end
  it 'can set a user move' do
    allow(version).to receive(:user_move).with('Rock').and_return('Rock')
    expect(version).to receive(:user_move).with('Rock')
    subject.version(version_class)
    subject.user_move('Rock')
    expect(subject.player_1).to eq('Rock')
  end
  it 'can set an AI move' do
    allow(version).to receive(:ai_move).and_return('Scissors')
    expect(version).to receive(:ai_move).and_return('Scissors')
    subject.version(version_class)
    subject.ai_move
    expect(subject.player_2).to eq('Scissors')
  end
  it 'can return results' do
    allow(version).to receive(:user_move).with('Rock').and_return('Rock')
    expect(version).to receive(:user_move).with('Rock')
    allow(version).to receive(:ai_move).and_return('Scissors')
    expect(version).to receive(:ai_move).and_return('Scissors')
    allow(version).to receive(:results).with('Rock', 'Scissors').and_return('You win!')
    expect(version).to receive(:results).with('Rock', 'Scissors').and_return('You win!')

    subject.version(version_class)
    subject.user_move('Rock')
    subject.ai_move
    subject.results
    expect(subject.results).to eq('You win!')
  end
end
