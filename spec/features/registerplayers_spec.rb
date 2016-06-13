

describe 'feature test: register players' do

  context 'single player' do

    it 'choose one player game' do
      visit('/')
      click_button('One Player')
      expect(page).to have_content('Human vs. Computer!')
    end

    it 'register a single player' do
      visit('/')
      click_button('One Player')
      fill_in('player1', :with => 'Superman')
      click_button('Go Do Battle!')
      expect(page).to have_content('Welcome, Superman')
    end

  end

  context 'two player' do

    it 'choose two player game' do
      visit('/')
      click_button('Two Players')
      expect(page).to have_content('Human vs. Human!')
    end

    it 'registers two players' do
      visit('/')
      click_button('Two Players')
      fill_in('player1', :with => 'Superman')
      fill_in('player2', :with => 'Batman')
      click_button('Go Do Battle!')
      expect(page).to have_content('Welcome to you both, Superman & Batman')
    end
  end

end
