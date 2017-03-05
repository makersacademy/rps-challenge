# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'The result is presented' do
  scenario 'when both computer and player have made their choice' do
    visit('/')
    enter_name_and_submit
    fill_in :player_selection, with: 'rock'
    click_button('Play!')
    click_button('Play again')
    expect(page).to have_content 'Select your weapon of choice:'
  end
end
