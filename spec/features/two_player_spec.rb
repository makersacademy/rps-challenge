require "spec_helper"

feature "Starting two player game" do

  scenario "I am asked to enter my name" do
    visit "/two-player"
    expect(page).to have_content "Enter name"
  end

  scenario "first player is player 1" do
    in_browser(:chrome) do
      visit "/two-player"
      fill_in("name", with: "Lewis")
      click_button "start game"
      expect(page).to have_content "Player: 1"
    end
  end

  scenario "second player is player 2" do
    in_browser(:safari) do
      visit "/two-player"
      fill_in("name", with: "Loony")
      click_button "start game"
      expect(page).to have_content "Player: 2"
    end
  end

  scenario "cannot have more than two players" do
    in_browser(:firefox) do
      visit "/two-player"
      fill_in("name", with: "Loony")
      click_button "start game"
      expect(page).to have_content "Game is full"
    end
  end
end


feature "playing two player game" do

  before do
    $player_count = 0
  end

  scenario "player one can play hand" do
    in_browser(:internet_explorer) do
      visit "/two-player"
      fill_in("name", with: "Lewis")
      click_button "start game"
      expect(page).to have_content "Choose your hand"
    end
  end

  scenario "one player can win" do
    in_browser(:chrome) do
      visit "two-player"
      click_button "start game"
      click_button "rock"
    end

    in_browser(:opera) do
      visit "two-player"
      fill_in("name", with: "Lewis")
      click_button "start game"
      click_button "paper"
      expect(page).to have_content "You Win: paper beats rock"
    end
  end
end



def in_browser(name)
  old_session = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end