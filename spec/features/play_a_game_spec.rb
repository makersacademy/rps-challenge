feature 'playing a game' do

  before(:each) do

    in_browser(:one) do
      visit '/'
      fill_in('name', with: 'Michael')
      click_on 'Submit'
    end

    in_browser(:two) do
      visit '/'
      fill_in('name', with: 'Emma')
      click_on 'Submit'
    end

    in_browser(:one) do
      click_on 'Reload'
    end

  end

  scenario 'players can play a game' do

    in_browser(:one) do
      select "Rock", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Thank you Michael! Waiting for opponent decision.'
    end

    in_browser(:two) do
      select "Paper", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Emma wins! Paper beats rock.'
    end

    in_browser(:one) do
      click_on 'Reload'
      expect(page).to have_content 'Emma wins! Paper beats rock.'
    end
  end
end
