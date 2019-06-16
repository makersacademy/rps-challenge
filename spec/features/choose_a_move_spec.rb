# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Choose a move' do
  scenario 'choose Rock' do
    visit('/')
    fill_in "player_name", with: "Rocky"
    click_button "Let's go!"
    click_button "Rock"

    expect(page).to have_content("Rocky went with Rock")
  end
end
