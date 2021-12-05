describe Player do
  subject { described_class.new("Tom") }
  it 'returns its name' do
    expect(subject.name).to eq "Tom"
  end
  
end