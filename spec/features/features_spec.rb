require './app.rb'

describe RPS, :type => :feature do

  describe "index.erb" do
    before do
      visit '/'
    end

    it "shows an expected string" do
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
      visit '/'
      fill_in 'player_name', with: 'Elle'
      click_button('Enter name')
    end

    it "displays player name" do
      expect(page).to have_content 'Hi, Elle'
    end
  end
end
