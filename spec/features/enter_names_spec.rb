feature 'Allows players to enter & see their names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1_name, with: 'A'
    fill_in :player2_name, with: 'B'
    click_button('Submit')
    expect(page).to have_content('A vs B')
  end
end