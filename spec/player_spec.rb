require 'player' 

describe Player do
  let(:subject)       { described_class.new 'muhammad' }

  it { is_expected.to be_an_instance_of described_class }

  it 'has a name' do
    expect(subject.name).to eq 'muhammad'
  end
end
