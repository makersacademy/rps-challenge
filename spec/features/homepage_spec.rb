feature 'test infrastructure' do
  scenario 'player can sign in' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    click_button('Submit')
  end
end
