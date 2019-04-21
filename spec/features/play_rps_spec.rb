feature 'Player can select a RPS option' do
  scenario 'presents player with a choice of RPS' do
    visit('/')
    fill_in('player_name', with: 'Rick')
    click_button('Submit')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end

  scenario 'submits their RPS choice' do
    visit('/')
    fill_in('player_name', with: 'Rick')
    click_button('Submit')
    choose('Rock')
    click_button('Submit')
    expect(page).to have_content('Rock')
  end

  feature 'Game selects an RPS option' do
    scenario 'displays the selected option' do
      srand(1)
      visit('/')
      fill_in('player_name', with: 'Rick')
      click_button('Submit')
      choose('Rock')
      click_button('Submit')
      expect(page).to have_content('Game plays Paper')
    end
  end
end
