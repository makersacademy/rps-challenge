require 'game'

describe Game do

  # before do
  #   allow(subject).to receive(:comp_choice).and_return("rock")
  # end

  it 'should be able to choose one of three items' do
    expect(subject).to respond_to(:user_choice).with(1).arguments
  end


  # xit 'should return "scissors" when comp_choice is run' do
  #   expect(Game.new).to receive(:comp_choice).and_return(:scissors)
  # end

  describe 'draw?' do
    it 'should draw if comp_choice and user_choice are equal' do
      subject.user_choice(:rock)
      allow(subject).to receive(:comp_choice).and_return(:rock)
      puts "-"*80
      puts subject.choice
      puts subject.comp_choice
      subject.draw?
      puts "-"*80
      expect(subject).to be_draw
    end
  end

  describe 'winner?' do

    it 'should win if user_choice is scissors and comp_choice is paper' do
      subject.user_choice("scissors")
      allow(subject).to receive(:comp_choice).and_return("paper")
      expect(subject.winner?).to eql(true)
    end

    it 'should win if user_choice is paper and comp_choice is rock' do
      subject.user_choice("paper")
      allow(subject).to receive(:comp_choice).and_return("rock")
      expect(subject.winner?).to eql(true)
    end

    it 'should win if user_choice is rock and comp_choice is scissors' do
      subject.user_choice("rock")
      allow(subject).to receive(:comp_choice).and_return("scissors")
      expect(subject.winner?).to eql(true)
    end

  end

  describe 'lose?' do

    it 'should lose if player chooses rock and comp chooses paper' do
      subject.user_choice("rock")
      allow(subject).to receive(:comp_choice).and_return("paper")
      expect(subject.lose?).to eql(true)
    end
  end

  describe 'result' do

    it 'should display the result of the game' do
    expect(subject).to respond_to(:result)
    end

    it 'should congratulate the winner if computer is beaten' do
      subject.user_choice("scissors")
      allow(subject).to receive(:comp_choice).and_return("paper")
      expect(subject.result).to eql("CONGRATULATIONS! YOU BEAT A MACHINE.")
    end

    it 'inform the user there is a draw' do
      subject.user_choice("paper")
      allow(subject).to receive(:comp_choice).and_return("paper")
      expect(subject.result).to eql("You drew.")
    end

    it 'inform the user they have lost the game' do
      subject.user_choice("rock")
      allow(subject).to receive(:comp_choice).and_return("paper")
      expect(subject.result).to eql("YOU LOST. THIS DUMB, ILLITERATE MACHINE BEAT YOU!")
    end

  end

end
