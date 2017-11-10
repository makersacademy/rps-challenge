require 'computer'



describe Computer do

  subject(:subject) { described_class.new }
  let(:array) { 'rock' }


  describe 'initialize' do
    it 'should select weapon from array' do
      expect(subject.weapon).to eq "paper" || "rock" || "scissors"
    end
  end
end
