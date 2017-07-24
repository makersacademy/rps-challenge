require 'computer'
describe Computer do
  subject(:computer) {Computer.new}
  describe "#name" do

    it 'can return its name' do
      expect(computer.name).to eq "computer"
    end
  end

  describe '#selction' do
    it 'excepts the selection' do
      expect(computer.selection("Rock")).to eq ["Rock"]
    end
  end

  describe '#return_selection' do
    it 'retains the mostrecent selection of RPS' do
      computer.selection("Rock")
      expect(computer.return_selection).to eq "Rock"
    end
  end

  describe 'make_selection' do
    it 'randomly picks RPS' do
      rps_array = %w("Rock" "Paper" "Sissors")
      expect(computer.make_selection).to eq("Rock").or(eq("Paper")).or(eq("Sissors"))

    end
  end

end
