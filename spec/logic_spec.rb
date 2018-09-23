describe Logic do
  it 'contains a hash for standard RPS logic' do
    expect(described_class::STD).to_not be_nil
  end
  it 'contains a hash for spock logic' do
    expect(described_class::SPOCK).to_not be_nil
  end
end
