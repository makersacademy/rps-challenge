require 'computer'

describe Computer do
  describe '#name' do
    it { expect(subject.name).to eq 'Computer' }
  end

  describe 'rand_chose' do
    it "randomly chose one from the choices" do
      srand(67_809)
      expect(subject.choice).to eq 'Scissors'
    end
  end
end
