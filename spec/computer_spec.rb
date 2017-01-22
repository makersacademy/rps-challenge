require 'computer'

describe Computer do
  subject(:computer) { described_class.new }
  let(:id) { computer.object_id }

  context 'to start,' do
    it 'it initialises with a default name' do
      expect(computer.name).to eq('Computer')
    end

    it "and receives 'add' class method" do
      expect(described_class).to receive(:add)
      described_class.add(id, computer)
    end

    it "and 'computers' class instance variable holds initialised instance" do
      described_class.add(id, computer)
      expect(described_class.computers).to have_key(id)
    end

    it "and class method 'find' locates computer object by id" do
      described_class.add(id, computer)
      expect(described_class.find(id)).to eq computer
    end
  end

  context 'then it' do
    it "randomly chooses a weapon" do
      srand 123
      expect(5.times.map{computer.choose}).to eq [:scissors, :paper, :scissors, :scissors, :rock]
    end
  end
end
