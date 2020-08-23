require 'computer'

describe Computer do

    it 'able to select paper from the array' do
      computer = Computer.new("computer")
      allow(computer).to receive(:computer_choice) { :paper }
    end
  end
