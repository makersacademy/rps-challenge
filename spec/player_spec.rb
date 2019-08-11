require_relative '../lib/player.rb'
describe Player do

  subject { described_class.new("Cher") }

  it 'will show the player\'s name' do
    expect(subject.name).to eq("Cher")
  end

end
