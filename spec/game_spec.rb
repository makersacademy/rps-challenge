require 'Game'

describe Game do

  describe '#view_choices' do
    it 'lists the choices available' do
      expect(subject.view_choices).to eq ["Rock", "Paper", "Scissors"]
    end
  end

end
