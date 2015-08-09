require 'spec_helper'
require 'helper'

feature 'Multiplayer game' do
  scenario 'Player_1 is able to start a multiplayer game' do
    visit '/'
    fill_in('name', with: 'Adrian')
    click_button('Submit')
    expect(page).to have_button('Multiplayer Mode')
  end

  scenario 'Player_1 goes into lobby after starting a multiplayer game' do
    visit '/'
    fill_in('name', with: 'Adrian')
    click_button('Submit')
    click_button('Multiplayer Mode')
    expect(current_path).to eq('/lobby')
  end

  scenario 'Player_1 waits in the lobby for Player_2 to join' do
    visit '/'
    fill_in('name', with: 'Adrian')
    click_button('Submit')
    click_button('Multiplayer Mode')
    expect(page).to have_content('Waiting for opponent to join...')
  end

  scenario 'Player_1 goes into multiplayer after Player_2 joins' do
    browser(:one) do
      setup_multiplayer("Adrian")
    end

    browser(:two) do
      setup_multiplayer('Bob')
    end

    browser(:one) do
      visit '/lobby'
      expect(current_path).to eq '/multiplayer'
    end
  end

  scenario 'Player_2 goes into multiplayer after joining' do
    browser(:one) do
      setup_multiplayer("Adrian")
    end

    browser(:two) do
      setup_multiplayer('Bob')
    end

    browser(:one) do
      visit '/lobby'
    end

    browser(:two) do
      visit '/lobby'
      expect(current_path).to eq '/multiplayer'
    end
  end

  scenario 'Players can select rock for rps' do
    setup_multiplayer_gameplay
    browser(:one) do
      expect(page).to have_field('Rock')
    end
  end

  scenario 'Players can select paper for rps' do
    setup_multiplayer_gameplay
    browser(:one) do
      expect(page).to have_field('Paper')
    end
  end

  scenario 'Players can select scissors for rps' do
    setup_multiplayer_gameplay
    browser(:one) do
      expect(page).to have_field('Scissors')
    end
  end

  scenario 'Players can select spock for rps' do
    setup_multiplayer_gameplay
    browser(:one) do
      expect(page).to have_field('Spock')
    end
  end

  scenario 'Players can select lizard for rps' do
    setup_multiplayer_gameplay
    browser(:one) do
      expect(page).to have_field('Lizard')
    end
  end

  scenario 'Players can play the move' do
    setup_multiplayer_gameplay
    browser(:one) do
      expect(page).to have_button('Play')
    end
  end

  before(:each) { $moves = 0 }
  scenario 'Player_1 waits in the lobby for Player_2 to make a move' do
    setup_multiplayer_gameplay
    browser(:one) do
      choose('Rock')
      click_button('Play!')
      expect(page).to have_content('Waiting for opponent to choose...')
    end
  end

  scenario 'Player_1 goes into results2 after Player_2 makes a move' do
    setup_multiplayer_gameplay
    browser(:one) do
      choose('Rock')
      click_button('Play!')
    end

    browser(:two) do
      choose('Rock')
      click_button('Play!')
    end

    browser(:one) do
      visit('/lobby2')
      expect(current_path).to eq('/result2')
    end
  end

  scenario 'Player_2 goes into results2 after making the move' do
    setup_multiplayer_gameplay
    browser(:one) do
      choose('Rock')
      click_button('Play!')
    end

    browser(:two) do
      choose('Rock')
      click_button('Play!')
    end

    browser(:one) do
      visit('/lobby2')
    end

    browser(:two) do
      visit('/lobby2')
      expect(current_path).to eq('/result2')
    end
  end

  scenario 'Player_1 can win the game' do
    setup_multiplayer_gameplay
    multiplayer_choose('Rock', 'Scissors')
    browser(:one) do
      expect(page).to have_content('You won!')
    end
  end

  scenario 'Player_2 can win the game' do
    setup_multiplayer_gameplay
    multiplayer_choose('Scissors', 'Rock')
    browser(:two) do
      expect(page).to have_content('You won!')
    end
  end

  scenario 'Player_1 can lose the game' do
    setup_multiplayer_gameplay
    multiplayer_choose('Rock', 'Paper')
    browser(:one) do
      expect(page).to have_content('You lost!')
    end
  end

  scenario 'Player_2 can lose the game' do
    setup_multiplayer_gameplay
    multiplayer_choose('Paper', 'Rock')
    browser(:two) do
      expect(page).to have_content('You lost!')
    end
  end

  scenario 'Players can draw the game' do
    setup_multiplayer_gameplay
    multiplayer_choose('Rock', 'Rock')
    browser(:one) do
      expect(page).to have_content("It's a draw...")
    end

    browser(:two) do
      expect(page).to have_content("It's a draw...")
    end
  end

  scenario 'Players can play again on the result2 page' do
    setup_multiplayer_gameplay
    multiplayer_choose('Rock', 'Rock')
    browser(:one) do
      click_button('Play again!')
      expect(current_path).to eq('/multiplayer')
    end
  end
end
