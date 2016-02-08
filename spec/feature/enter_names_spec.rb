require 'capybara/dsl'
require 'web_helpers'



feature "User storys => RPS" do

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

  describe "Single Player Mode" do

    scenario "allow player to enter name" do
      sign_in_and_play
      expect(page).to have_content('Dave vs. The Computer')
    end

    scenario "allow player to choose Rock" do
      sign_in_and_play
      click_button('rock')
      expect(page).to have_content('Dave chose rock')
    end

    scenario "allow player to choose Paper" do
      sign_in_and_play
      click_button('paper')
      expect(page).to have_content('Dave chose paper')
    end

    scenario "allow player to choose Scissors" do
      sign_in_and_play
      click_button('scissors')
      expect(page).to have_content('Dave chose scissors')
    end

    scenario "allow computer to choose an option" do
      allow_any_instance_of(Computer).to receive(:choice).and_return('rock')
      sign_in_and_play
      click_button('scissors')
      expect(page).to have_content("The Computer chose rock")
    end

    scenario 'Declare a winner' do
      allow_any_instance_of(Computer).to receive(:choice).and_return('rock')
      sign_in_and_play
      click_button('paper')
      expect(page).to have_content('Dave wins!')
    end
  end

  describe 'Multiplayer' do

    scenario "allow two players to enter names" do
      sign_in_and_play_two
      expect(page).to have_content('Dave vs. Mike')
    end

    scenario "declare a winner in two player mode" do
      full_set_up
      expect(page).to have_content('Mike wins')
    end
  end

end

