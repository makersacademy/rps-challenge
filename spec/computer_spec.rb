require 'computer'
describe Computer do

  let(:subject) { described_class.new }
  let(:choice) { ['Rock', 'Paper', 'Scissors'] }

  describe '#choose_move' do
    it 'generates computer\'s move' do
      subject.generate_move
      expect(choice).to include subject.choice
    end
  end
end
