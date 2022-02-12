feature 'Play game' do
  # As a marketeer
  # So that I can enjoy myself away from the daily grind
  # I would like to be able to play rock/paper/scissors
  scenario "Player is given an option to choose 'Rock', 'Paper' or 'Scissors'" do
    visit('/')
    fill_in('player_1_name', with: 'Jack')
    click_button('Submit')
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end