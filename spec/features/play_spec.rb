describe 'play.erb' do
  before(:each) { enter_name_and_submit }

  feature 'States the players name' do
    scenario 'After entering name on homepage' do
      expect(page).to have_content("Tom")
    end
  end

  feature 'Player can make choice' do
    scenario 'button to select Rock' do
      expect(page).to have_button('rock')
    end

    scenario 'button to select Paper' do
      expect(page).to have_button('paper')
    end

    scenario 'button to select Scissors' do
      expect(page).to have_button('scissors')
    end

    scenario 'takes player to results page' do
      click_button('rock')
      expect(page.current_url).to include('/results')
    end
  end
end
