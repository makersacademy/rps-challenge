require 'sampler'

describe Sampler do

  describe '#generate' do

    it 'chooses Rock' do
      sampler = Sampler.new
      allow(Kernel).to receive(:rand).and_return(0)
      expect(sampler.generate).to eq(0)
    end

    it 'chooses Paper' do
      sampler = Sampler.new
      allow(Kernel).to receive(:rand).and_return(1)
      expect(sampler.generate).to eq(1)
    end

    it 'chooses Rock' do
      sampler = Sampler.new
      allow(Kernel).to receive(:rand).and_return(2)
      expect(sampler.generate).to eq(2)
    end

  end
end
