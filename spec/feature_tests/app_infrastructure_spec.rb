feature Rps do
  scenario 'tests the infrastructure is working' do
    visit '/'
    expect(page).to have_content('Welcome to the ultimate game of Rock, Paper, Scissors')
  end

  feature 'starting the game' do
    scenario 'allows player to enter name and start a game of rps' do
      visit '/'
      fill_in('PlayerName', with: 'John')
      click_button('Go!')
      expect(page).to have_content('John vs RpsBot')
    end
  end

  feature 'game page' do
    scenario 'allows player to choose rock' do
      startup
      page.find(:css, '[name=choice][value=Rock]').set(true)
      click_button('Fight!')
      expect(page).to have_content('John chose Rock')
    end

    scenario 'allows player to choose paper' do
      startup
      page.find(:css, '[name=choice][value=Paper]').set(true)
      click_button('Fight!')
      expect(page).to have_content('John chose Paper')
    end

    scenario 'allows player to choose scissors' do
      startup
      page.find(:css, '[name=choice][value=Scissors]').set(true)
      click_button('Fight!')
      expect(page).to have_content('John chose Scissors')
    end

    scenario '' do
      startup
      page.find(:css, '[name=choice][value=Rock]').set(true)
      click_button('Fight!')
      expect(page).to have_content('Rpsbot chose')
    end
  end

end
