require 'player'
  describe Player do
    subject (:harry) {Player.new('Harry')}

    describe '#name' do
      it 'returns a name' do

      expect(harry.name).to eq 'Harry'
    end
  end
end