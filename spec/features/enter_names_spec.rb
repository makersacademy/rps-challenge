# frozen_string_literal: true

feature 'Entering players' do
  scenario 'shows instructions' do
    visit('/')
    expect(page).to have_content("Type in the players' names!")
  end

  scenario 'displays play button' do
    visit('/')
    expect(page).to have_button('Play')
  end

  scenario 'accepts one name' do
    solo_sign_in_and_play
    expect(page).to have_content('Alfred vs. Computer')
  end

  scenario 'accepts two names' do
    duo_sign_in_and_play
    expect(page).to have_content('David vs. Edward')
  end
end
