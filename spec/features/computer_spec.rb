require 'computer'

describe Computer do
  describe '#computer_choice'
  it 'generates random move' do
    allow(subject).to receive(:computer_choice).and_return(:paper)
    expect(subject.computer_choice).to eq :paper
  end
end
