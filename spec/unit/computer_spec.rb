require 'computer'

describe Computer do
  context '#choice' do
    it 'sets a random choice for computer player' do
      choices = ['rock', 'paper', 'scissors'];
      expect(choices).to include Computer.new.choice
    end
  end
end
