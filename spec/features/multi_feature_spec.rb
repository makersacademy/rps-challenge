feature 'homepage' do
  scenario 'player enters name' do
    visit('/')
    fill_in('player_name', with: 'Amanda')
    click_button('Submit')
    save_and_open_page
    expect(page).to have_content 'Amanda, get ready to play!'
  end
end