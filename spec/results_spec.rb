require 'result'

describe 'Result' do
  it "returns empty result array" do
    expect(Result.new.results).to be_empty
  end


  describe '#add_result' do # need two more tests on this method 
    subject(:result) { Result.new }
    it "adds new result in the results array" do
      new_result = :won
      expect(result.add_result(new_result)).to include new_result
    end
  end

  describe '#get_result' do
    subject(:result) { Result.new }
    context 'when net score is a positive number' do
      it "returns won" do
        result.results = [:won, :lost, :won, :draw]
        expect(result.get_result).to eq :won
      end
    end

    context 'when net score is negative number' do
      it "returns lost" do
        result.results = [:won, :lost, :lost, :draw]
        expect(result.get_result).to eq :lost
      end
    end

    context 'when net score is zero' do
      it "returns draw" do
        result.results = [:won, :lost, :draw]
        expect(result.get_result).to eq :draw
      end
    end

  end
end
