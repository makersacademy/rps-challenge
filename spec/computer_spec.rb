require 'computer'

describe Computer do
  subject(:computer) { Computer.new }
  let(:computer) { double :computer, :weapon => "paper" }

  describe '#weapon' do
    it 'chooses a weapon' do
      expect(computer.weapon).to eq 'paper'
    end
  end

end
