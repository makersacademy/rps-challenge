require 'player'
describe Player do

  subject(:alex) { described_class.new("Alex") }

  it 'has a name' do
    expect(alex.name).to eq("Alex")
  end

  # it 'has a choice' do
  #   expect(alex.choice).to eq nil
  # end

end
