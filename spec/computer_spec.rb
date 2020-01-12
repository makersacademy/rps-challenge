require 'computer'

describe "Computer" do
  subject(:Computer) { Computer.create('Computer') }

  describe "Picks a random move" do
    it 'returns rock, paper or scissors' do
      expect(subject.guess).to eq 'Rock'
    end
  end

end