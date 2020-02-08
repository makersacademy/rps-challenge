describe Player do
  let(:name) { double :name }
  let(:move) { double :move }
  subject { described_class.new(name) }

  it 'has a name' do
    expect(subject.name).to eq name
  end

  it 'can choose a move' do
    expect(subject.choose(move)).to eq move
  end

end
