describe HumanPlayer do

  let(:name) { %w(Andrea Mario Giorgio).sample } 
  let(:weapon) { %w(R P S).sample } 
  let(:player) { described_class.new(name, weapon) }


  it '#weapon returns whatever weapon it was initialised with' do
    expect(player.weapon).to eq(weapon)
  end 

  it '#name returns whatever name it was initialised with' do
    expect(player.name).to eq(name)
  end 
end
