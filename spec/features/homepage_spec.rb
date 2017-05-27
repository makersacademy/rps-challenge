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

  scenario 'player is told to choose a weapon' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    click_button('Submit')
    expect(page).to have_content 'Choose your weapon:'
  end

  scenario 'player is given a choice of Rock' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    click_button('Submit')
    find_button('Rock').click
  end

  scenario 'player is given a choice of Paper' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    click_button('Submit')
    find_button('Paper').click
  end

  scenario 'player is given a choice of Scissors' do
    visit ('/')
    fill_in('player1_name', with: 'Kavita')
    click_button('Submit')
    find_button('Scissors').click
  end

end
