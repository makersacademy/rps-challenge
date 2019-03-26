# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'winner' do
  scenario 'attack Player 2' do

    visit('/')
    fill_in 'player_name', with: 'Jimmy'
    fill_in 'name_colour', with: 'red'
    click_button('Submit')
    find("input[value='👊']").click
    expect(page).to have_content 'Ok, Jimmy Choose your weapon'
  end
end
