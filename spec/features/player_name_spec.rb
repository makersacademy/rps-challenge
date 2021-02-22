feature 'Enter name for a player' do
  scenario 'submitting name' do
    visit('/')
    fill_in :player1, with: 'Ania'
    click_button 'Play!'
    expect(page).to have_content 'Ania'
  end
end
