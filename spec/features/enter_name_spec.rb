# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Testing entering player name" do
  scenario "Player can enter and submit name" do
    enter_name_click_submit
    expect(page).to have_content 'Peter vs. Computer'
  end
end