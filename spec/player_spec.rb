require 'player'

describe Player do

  let(:rock){double(:rock)}

  it 'can select a shape' do
    expect(subject).to respond_to(:select).with(1).argument
  end

  it 'retains their selected shape' do
    subject.select(rock)
    expect(subject.current_selection).to eq rock
  end

  it 'can clear the current selection so no shape is selected' do
    subject.select(rock)
    subject.clear_selection
    expect(subject.current_selection).to eq nil
  end

end