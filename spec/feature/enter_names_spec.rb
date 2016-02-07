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
    expect(page).to have_content('Dave vs. The Computer')
  end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
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

