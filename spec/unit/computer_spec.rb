require 'computer'
# Rspec tests Computer class for RSP game

describe Computer do

  subject(:computer) { described_class.new }

  describe 'initialization' do
    it 'should be an instance of computer class' do
      expect(computer).to be_an_instance_of(Computer)
    end

    it 'should create only one instance of itself' do
      expect(Computer.create(computer)).to eq computer
    end

  end
end
