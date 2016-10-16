require 'player'

describe Player do
	let(:player) { described_class.new("foobar")}
  
  it 'initializes with a name' do
  	expect(player.name).to eq("foobar")
  end

  context '#move' do
    it 'sets the choice' do
    	player.choice = "Rock"
    	expect(player.choice).to eq "Rock"
    end

    it 'raises an error if it is not a valid choice' do
      expect{player.choice=("foobar")}.to raise_error "Not a valid choice!"
    end
  end

end 