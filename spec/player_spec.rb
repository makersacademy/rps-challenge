describe Player do
  subject(:jay) { Player.new('Jay') }

  describe '#name' do
    it 'returns the name' do
       expect(jay.name).to eq "Jay"
    end
  end
end
