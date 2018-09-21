feature 'update screen with player name' do
  scenario 'expect that player to be able to fill their name in a form and see their name after submitting it' do
    visit('/')
    fill_in('player1_name', with:'Vu')
    click_button('Submit')
    expect(page).to have_content('Vu')
  end
end