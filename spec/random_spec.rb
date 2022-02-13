describe Random do

  describe '#random_option' do
    it 'should chose a random option' do
      round = Random.new
      round.stub(:random_option) { "Scissors" }
      expect(round.random_option).to eq "Scissors"
    end
  end
end
