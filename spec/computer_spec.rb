describe Computer do
  subject(:timmy) { Player.new('Timmy') }
  subject(:computer) { Computer.new('RPS Computer') }

  describe '#computer_name' do
    it "should return the computer's name" do
      expect(computer.name).to eq('RPS Computer')
    end
  end

end