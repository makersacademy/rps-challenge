require_relative './web_helpers'

feature 'play' do
  scenario 'user sees a greeting' do
    sign_in_and_play
    expect(page).to have_content("You'll be playing against the computer.")
    expect(page).to have_content("Hope you brought your A game.")
    expect(page).to have_content("Choose one:")
  end

  scenario 'user chooses Rock' do
    sign_in_and_play
    visit('/play_start')
    click_button('Rock')
    expect(page).to have_content("You chose: Rock")
  end
end
