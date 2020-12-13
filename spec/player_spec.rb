describe Player do
    let(:name) { :name }
    subject = Player.new("AJ")

    it 'creates an instance of player' do
        expect(subject).to be_instance_of Player
    end

    it 'player has a name' do
        expect(subject.name).to eq "AJ"
    end
end