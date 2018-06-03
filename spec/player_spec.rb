describe Player do

  subject { Player.new('John') }

  it 'has a name' do
    expect(subject.name).to eq 'John'
  end

  it 'starts with zero wins' do
    expect(subject.wins).to eq 0
  end

  it 'begins with no selection' do
    expect(subject.selection).to be_nil
  end

end
