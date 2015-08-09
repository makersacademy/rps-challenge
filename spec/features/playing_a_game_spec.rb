require 'spec_helper'

def in_browser(name)
  old_session           = Capybara.session_name
  Capybara.session_name = name
  yield
  Capybara.session_name = old_session
end

feature 'Feature: starting a game' do
  scenario 'index page asks me for my name' do
    visit '/'
    expect(page).to have_content("To begin playing, please enter your name:")
  end

  scenario 'when I enter my name, I am asked to select my move' do
    visit '/'
    fill_in('name_field', with: 'Rufio')
    click_button('Submit name')
    expect(page).to have_content("Rufio, select your move!")
  end
end

feature 'Feature: playing a game' do
  scenario "If I lose, then I receive the correct message" do
    in_browser(:firefox) do
      visit '/'
      fill_in('name_field', with: 'Rufio')
      click_button('Submit name')
      choose('radio_Rock')
      click_button('Bring it on!')
    end
    in_browser(:chrome) do
      visit '/'
      fill_in('name_field', with: 'Wendy')
      click_button('Submit name')
      choose('radio_Scissors')
      click_button('Bring it on!')
      expect(page).to have_content("Bad luck Wendy: You're a loser...")
    end
  end
  
  scenario "If I win, then I receive the correct message" do
    in_browser(:firefox) do
      visit '/'
      fill_in('name_field', with: 'Rufio')
      click_button('Submit name')
      choose('radio_Paper')
      click_button('Bring it on!')
    end
    in_browser(:chrome) do
      visit '/'
      fill_in('name_field', with: 'Wendy')
      click_button('Submit name')
      choose('radio_Scissors')
      click_button('Bring it on!')
      expect(page).to have_content("Congratulations Wendy: You are victorious!!")
    end
  end

  scenario "If there is a draw, players receive the correct message" do
    in_browser(:firefox) do
      visit '/'
      fill_in('name_field', with: 'Rufio')
      click_button('Submit name')
      choose('radio_Paper')
      click_button('Bring it on!')
    end
    in_browser(:chrome) do
      visit '/'
      fill_in('name_field', with: 'Wendy')
      click_button('Submit name')
      choose('radio_Paper')
      click_button('Bring it on!')
      expect(page).to have_content("It's a draw!!")
    end
  end
end
