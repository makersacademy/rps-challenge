require 'player'

RSpec.describe Player do

  subject { described_class.new("Billy") }

  it 'should have a name' do
    expect(subject.name).to eq "Billy"
  end
end
