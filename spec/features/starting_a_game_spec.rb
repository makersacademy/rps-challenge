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

  # scenario "Once I select my move & click-through, I am told whether I won or lost" do
  #   in_browser(:firefox) do
  #     visit '/'
  #     fill_in('name_field', with: 'Rufio')
  #     click_button('Submit name')
  #     choose('Rock')
  #     click_button('Bring it on!')
  #     expect(page).to have_content("Congratulations Rufio: You are victorious!!")
  #   end
  #   in_browser(:chrome) do
  #     visit '/'
  #     fill_in('name_field', with: 'Wendy')
  #     click_button('Submit name')
  #     fill_in('Scissors')
  #     click_button('Bring it on!')
  #     expect(page).to have_content("Bad luck Wendy: You're today's loser...")
  #   end
  # end

end
