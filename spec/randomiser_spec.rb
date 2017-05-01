require 'randomiser'



describe 'Randomiser' do
subject(:randomiser) { Randomiser.new }

  describe '#randomise' do
    it 'provides a random rps outcome' do
      expect(randomiser.randomise).to eq('rock') || ('paper') || ('scissors')
    end
  end

end 