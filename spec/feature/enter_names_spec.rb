require 'capybara/dsl'
require 'web_helpers'

feature "User story => RPS" do

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

  scenario "allow player to enter name" do
    visit '/'
    fill_in('player_name', with: 'Dave')
    click_button('Submit')
    expect(page).to have_content('Dave vs. Computer')
  end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
  scenario "allow player to choose Rock" do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You chose Rock')
  end

  scenario "allow player to choose Paper" do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('You chose Paper')
  end

  scenario "allow player to choose Scissors" do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('You chose Scissors')
  end

end

