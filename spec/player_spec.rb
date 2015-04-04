describe Player do
  it 'has a name' do
    subject { describe_class.new("Jade") }
    expect(subject.name).to eq "Jade"
  end
end
