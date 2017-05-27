feature 'player can enter name' do
  scenario 'player can see name' do
    visit('/')
    fill_in('player1', with: 'Bert')
    fill_in('player2', with: 'Ernie')
    click_button('Submit')
    expect(page).to have_content('Bert Vs. Ernie')
  end
end
