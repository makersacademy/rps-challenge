feature 'single_player_play' do

  context 'player on play page' do

    before(:each) do
      visit('/single_player_name')
      fill_in('player_1_name', :with => DEFAULT_PLAYER_NAME)
      click_button('Play')
    end

    scenario 'Can click a rock button' do
      click_button('Rock')
      expect(page).to have_content('Rock')
    end

    scenario 'Can click a paper button' do
      click_button('Paper')
      expect(page).to have_content('Paper')
    end

    scenario 'Can click a scissors button' do
      click_button('Scissors')
      expect(page).to have_content('Scissors')
    end

    scenario 'Can click a lizard button' do
      click_button('Lizard')
      expect(page).to have_content('Lizard')
    end
    scenario 'Can click a Spock button' do
      click_button('Spock')
      expect(page).to have_content('Spock')
    end
    scenario 'Can click a Batman button' do
      click_button('Batman')
      expect(page).to have_content('Batman')
    end

    scenario 'Can click a Spiderman button' do
      click_button('Spiderman')
      expect(page).to have_content('Spiderman')
    end

    scenario 'Can click a Wizard button' do
      click_button('Wizard')
      expect(page).to have_content('Wizard')
    end

    scenario 'Can click a Glock button' do
      click_button('Glock')
      expect(page).to have_content('Glock')
    end

  end

end
