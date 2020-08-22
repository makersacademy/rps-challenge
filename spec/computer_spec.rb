require 'computer'

describe Computer do

    it 'able to select paper from the array' do
      allow(subject).to receive(:computer_choice) { :paper }
    end
  end
