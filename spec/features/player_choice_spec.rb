feature 'A player can make a selection for their weapon' do
  scenario 'they can pick rock, paper or scissors' do
    visit('/')
    enter_name_and_submit
    fill_in :player_selection, with: 'rock'
    click_button('Play!')
    expect(page).to have_content 'You have selected rock'
  end
end
