require 'computer'

describe Computer do
  rps_array = ['rock', 'paper', 'scissors']

  it { is_expected.to respond_to :action }
  
  describe '#action' do
    it 'returns rock, paper or scissors' do
      expect(rps_array.find { |item| item == subject.action } ).to_not be_nil
    end
  end
end
