require 'computer'

describe Computer do

  subject(:computer_options) { Game::DEFAULT_OPTIONS }
  subject(:computer) { Computer.new }

  describe 'computer_options' do
    it 'initializes an array of options as default' do
      expect(computer_options).to eq([:rock, :paper, :scissors])
    end
  end

  describe '#computer_choice' do
    it 'chooses the computer_choice' do
      expect(computer_options.sample).to match('paper').or match('rock').or match('scissors')
    end
  end


end


