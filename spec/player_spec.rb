require 'player'

describe Player do

  let(:subject) { Player.new("Pete") }
  
  it 'should have a name' do
    expect(subject.name).to eq "Pete"
  end

end
