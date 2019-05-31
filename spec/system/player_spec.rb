require './lib/player.rb'
describe Player do

  subject { Player.new('Jimmy') }
  
  it 'returns its name' do
    expect(subject.name).to eql('Jimmy')
  end

end
