require './lib/player.rb'
describe Player do

  subject { Player.new('Jimmy') }
  
  it 'returns its name' do
    expect(subject.username).to eql('Jimmy')
  end

end
