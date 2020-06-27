describe Game do
  subject = Game.new("testplayer")

  describe '#initialize' do
    it 'should be created with a name and return the player name' do
      expect(subject.name).to eq("testplayer")
    end
  end

  describe '#calculate_winner' do

    arr1 = ['rock', 'paper', 'scissors']
    arr2 = ['paper', 'scissors', 'rock']

    arr1.each  do |x|
      it 'should return draw for ' + x + ' vs ' + x do
        expect(subject.calculate_winner(x, x)).to include('draw') 
      end
    end

    (0).upto(2)  do |x|
      it 'should return lost for ' + arr1[x] + ' vs ' + arr2[x] do
        expect(subject.calculate_winner(arr1[x], arr2[x])).to include('lost') 
      end
    end

    (0).upto(2)  do |x|
      it 'should return win for ' + arr2[x] + ' vs ' + arr1[x] do
        expect(subject.calculate_winner(arr2[x], arr1[x])).to include('win') 
      end
    end

  end

end