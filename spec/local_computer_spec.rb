describe Computer do
  it { is_expected.to respond_to :moves }
  describe '#moves' do
    it 'chooses a random move' do
      computer = Computer.new
      expect(computer.moves).not_to eq 0
    end
  end
end
