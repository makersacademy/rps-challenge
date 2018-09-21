require 'computer'

describe Computer do

  subject(:pc) {Computer.new("r")} #stub

  describe 'computer class' do
    it 'it returns an instance of the computer class with rock(r) choice' do
      expect(pc.computer_move).to eq("r")
    end
  end

end
