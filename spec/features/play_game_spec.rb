feature 'Play game' do
  scenario 'player selects an option and returns a win' do
    visit('/')
    fill_in 'name', with: 'Gizmo'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end
end
