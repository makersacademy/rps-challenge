require 'game'

describe Game do
  subject { described_class.new("Bob") }
  it 'stores the name of the player' do
    expect(subject.name).to eq "Bob"
  end

end
