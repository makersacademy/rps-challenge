require 'choices'

describe Choices do
  let(:choices) {Choices.new}
  context("constants ") do

    it("CHOICES[:scissors] is 0") do
      expect(Choices::CHOICES[:scissors]).to eq 0
    end

    it("VERBS[:spockscissors] is smashes") do
      expect(Choices::VERBS[:spockscissors]).to eq "smashes"
    end

    it("CLASSIC is 3") do
      expect(Choices::CLASSIC).to eq 3
    end

    it("SPOCK is 5") do
      expect(Choices::SPOCK).to eq 5
    end
  end

  context 'converts to choice to number' do
    it('paper is converted to 1') do
      expect(Choices.to_i("paper")).to eq Choices::CHOICES[:paper]
    end
  end

  context 'verbs of beaten' do
    it('rockscissors verb is crushes') do
      expect(Choices.verb("rock", "scissors")).to eq "crushes"
    end
  end
end
