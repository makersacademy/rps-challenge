feature 'view results' do
  scenario 'it displays the shape you picked' do
    visit('/name')
    within('form') do
      fill_in('player_name', with: 'Ollie')
    end
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("You selected rock!")
  end
end

feature 'view results' do
  scenario 'tells you what the computer picked' do
    srand(4)
    visit('/name')
    within('form') do
      fill_in('player_name', with: 'Ollie')
    end
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("The computer selected: scissors")
  end
end

  feature 'view results' do
    scenario 'tells you if you won' do
      srand(4)
      visit('/name')
      within('form') do
        fill_in('player_name', with: 'Ollie')
      end
      click_button('Submit')
      click_button('Rock')
      expect(page).to have_content("Congratulations Ollie - you won!")
    end
  end

  feature 'view results' do
    scenario 'tells you if you lost' do
      srand(4)
      visit('/name')
      within('form') do
        fill_in('player_name', with: 'Ollie')
      end
      click_button('Submit')
      click_button('Paper')
      expect(page).to have_content("Comiserations Ollie - you lost :(")
    end
  end