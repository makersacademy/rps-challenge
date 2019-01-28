require 'computer'

describe Computer do
  describe 'provide a fake player' do
    it 'returns a shape' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(Computer.new.shape).to eq 'Paper'
    end
  end
end
