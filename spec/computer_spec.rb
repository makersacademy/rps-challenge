require 'computer'
describe Computer do

    let(:computer) {Computer.new }

    it "checks computer has name" do
      expect(computer.name).to eq "Computer"
    end

end