require 'computer'

describe Computer do
  context 'name' do
    it "has a name" do
      expect(subject.name).to eq "CPU"
    end
  end

  context '#move' do
    it { is_expected.to respond_to(:move) }

    
  end

end