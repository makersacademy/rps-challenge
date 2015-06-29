feature 'playing a game' do

  before(:each) do

    $game = nil

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
      expect(page).to have_content 'Thank you Michael! You selected rock. Waiting for opponent decision.'
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

    in_browser(:two) do
      select "Lizard", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Thank you Emma! You selected lizard. Waiting for opponent decision.'
    end

    in_browser(:one) do
      select "Scissors", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Michael wins! Scissors beats lizard.'
      select "Spock", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Thank you Michael! You selected spock. Waiting for opponent decision.'
    end

    in_browser(:two) do
      click_on 'Reload'
      expect(page).to have_content 'Michael wins! Scissors beats lizard.'
      select "Paper", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Emma wins! Paper beats spock.'
    end

    in_browser(:one) do
      click_on 'Reload'
      expect(page).to have_content 'Emma wins! Paper beats spock.'
      select "Rock", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Thank you Michael! You selected rock. Waiting for opponent decision.'
    end

    in_browser(:two) do
      select "Paper", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Emma wins! Paper beats rock.'
    end

    in_browser(:one) do
      click_on 'Reload'
      expect(page).to have_content 'Emma wins! Paper beats rock.'
      select "Rock", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Thank you Michael! You selected rock. Waiting for opponent decision.'
    end

    in_browser(:two) do
      select "Paper", :from => "game_select"
      click_on 'Submit'
      expect(page).to have_content 'Emma is victorious! Would you like to play again?'
    end

    in_browser(:one) do
      click_on 'Reload'
      expect(page).to have_content 'Emma is victorious! Would you like to play again?'
    end
  end
end
