require './lib/computer'
describe Computer do
    subject(:computer) {described_class.new}
    let(:player1) {double :player1}
    
    it ' returns rps array' do
        expect(Computer::RPS).to include computer.rps
    end
    
end