# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play round of paper, sissors, stone' do
  scenario 'Player chooses paper and plays game' do
    visit('/')
    fill_in('player_name', with: 'James')
    click_button('submit')
    choose('Paper')
    click_button('submit')
    expect(page).to have_content("James")
  end
end
