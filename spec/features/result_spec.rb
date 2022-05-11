
feature 'Receiving the result' do
  scenario 'result' do
    visit('/')
    fill_in :player, with: 'Slava'
    click_button 'Submit'
    click_button 'Scissors'
    expect(page).to have_content 'Slava chose: scissors'
    expect(page).to have_button 'Play again'
    expect(page).to have_button 'Finish game'
  end
end
