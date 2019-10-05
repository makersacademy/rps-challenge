feature 'Game over' do
  scenario 'when both players have had a go' do
    sign_in_start_game
    click_button 'Submit'
    click_button 'Submit'
    expect(page).to have_content 'Game over'
  end
end
