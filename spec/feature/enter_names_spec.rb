require 'capybara/dsl'

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
end

