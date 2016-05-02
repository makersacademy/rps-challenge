require 'choices'

describe Choices do
  let(:choices) {Choices.new}
  context("constants ") do

    it("CHOICES[:scissors] is 0") do
      expect(Choices::CHOICES[:scissors]).to eq 0
    end

    it("CLASSIC is 3") do
      expect(Choices::CLASSIC).to eq 3
    end

    it("SPOCK is 5") do
      expect(Choices::SPOCK).to eq 5
    end
  end

  context 'converts to choice to number' do
    it('papers is converted to 1') do
      choices.choice = "paper"
      expect(choices.to_i).to eq Choices::CHOICES[:paper]
    end
  end

end
