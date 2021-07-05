require 'computer'

describe Computer do

  it 'should have computer options' do
    expect(Computer::OPTIONS).to eq [:rock, :paper, :scissors]
  end

  it 'creates the computers turn' do
    allow(Computer::OPTIONS).to receive(:sample).and_return(:paper)
    expect(subject.computer_turn).to eq :paper
  end

end
