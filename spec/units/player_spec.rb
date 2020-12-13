describe Player do
  let(:name) { :name }
  subject = Player.new("Pikachu")

  it 'creates an instance of player' do
      expect(subject).to be_instance_of Player
  end

  it 'player has a name' do
      expect(subject.name).to eq "Pikachu"
  end

  it 'player receives chosen_weapon' do
    allow(subject).to receive(:chosen_weapon)
    subject.chosen_weapon(:rock)
    expect(subject).to have_received(:chosen_weapon)
  end
end 
