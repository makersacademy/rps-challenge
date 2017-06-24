require './app.rb'

describe RPS, :type => :feature do

  describe "index.erb" do
    before do
      visit '/'
    end

    it "shows a welcome" do
        expect(page).to have_content 'Welcome to Rock Paper Scissors!'
    end

    it "prompts the user to enter names" do
      expect(page).to have_content "Please enter your name"
    end

    describe "enter name form" do
      it "has a text field for the player's name" do
        expect { find_field('player_name') }.to_not raise_error
      end
    end
      it 'has a submit button' do
        expect { find_button('Enter name') }.to_not raise_error
      end
  end

  describe "play.erb" do
    before do
      sign_in_and_play
    end

    it "displays player name" do
      expect(page).to have_content 'Hi, Elle'
    end

    it "prompts player to choose a move" do
      expect(page).to have_content 'Choose what move you want to make'
    end

    describe "enter choice form" do
      it "has a text field for the player's choice of move" do
        expect { find_field('move') }.to_not raise_error
      end

      it 'has a submit button' do
        expect { find_button('Continue') }.to_not raise_error
      end
    end
  end

  describe "battle.erb" do

  let(:computer) { double'computer' }
  let(:game) { double'game' }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }


    before do
      sign_in_and_play
      fill_in 'move', with: 'rock'
      click_button('Continue')
    end

    it "shows the player's choice" do
      expect(page).to have_content 'You threw rock!'
    end

    it "shows the computer's choice" do
      expect(page).to have_content 'Your opponent threw '
    end

#this needs to be stubbed for randomness
    it "shows the result of the game" do
      allow(player_2).to receive(:move).and_return('rock')
      expect(page).to have_content 'It\'s a draw!'
    end
  end
end
