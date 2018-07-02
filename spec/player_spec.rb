describe Player do
  subject(:jay) { Player.new('Jay') }

  describe '#name' do
    it 'returns the name' do
      expect(jay.name).to eq 'Jay'
    end
  end

  describe '#weapon' do
    it 'return the weapon' do
      expect(jay.weapon('rock')).to eq 'rock'
    end

    context 'it is not a weapon' do
      it 'raise and error' do
        expect { jay.weapon('pizza') }.to raise_error 'not a possible weapon'
      end
    end
  end

end
