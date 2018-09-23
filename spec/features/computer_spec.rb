require './lib/computer'

describe Computer do
  subject(:computer) { described_class.new }

  feature 'Computer chooses their weapon' do
    scenario 'Computer chooses from OPTIONS constant' do
      allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
      expect(computer.computer_choice).to eq (Game::OPTIONS.sample)
    end
  end
end
