# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Scoreboard' do
  scenario 'The scoreboard begins at 0:0' do
    enter_name_click_submit
    expect(page).to have_content "Peter 0\nComputer 0"
  end
end