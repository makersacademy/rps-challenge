feature 'test infrastructure' do
  scenario 'player can sign in' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    click_button('Submit')
  end

  scenario 'player can view name' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    click_button('Submit')
    expect(page).to have_content 'Welcome, Kavita'
  end
end
