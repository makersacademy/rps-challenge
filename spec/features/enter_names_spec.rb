feature 'Enter names' do
  scenario 'submitting player names' do
    visit('/')
    fill_in :player_1, with: 'Ahsoka'
    click_button('Submit')
    expect(page).to have_content 'Ahsoka vs. The Computer'
  end
end
