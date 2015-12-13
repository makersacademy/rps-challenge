# require 'capybara'
# require 'selenium-webdriver'
# include Capybara::DSL
# Capybara.default_driver= :selenium

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play game' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    sign_in_and_play
  end

  scenario 'selects rock' do
    click_button("rock")
    expect(page).to have_content("Win")
  end
  
  scenario 'selects paper' do
    click_button("paper")
    expect(page).to have_content("Lost")
  end

  scenario 'selects scissors' do
    click_button("scissors")
    expect(page).to have_content("Draw")
  end
end
