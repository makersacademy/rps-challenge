describe Computer do
    let(:choice) { "Rock" }
    subject = Computer.new

    it 'creates an instance of computer' do
        expect(subject).to be_instance_of Computer
    end

    it 'has a choice' do
        expect(subject.choice).to eq("Rock").or eq("Paper").or eq("Scissors")
    end

end