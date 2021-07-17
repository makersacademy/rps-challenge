RSpec.feature 'Fighting' do
  scenario 'confirms weapon' do
    sign_in_and_play
    choose_weapon
    expect(page).to have_content 'You have chosen rock as your weapon!'
  end
  scenario 'starts fight' do
    sign_in_and_play
    choose_weapon
    expect(page).to have_content 'Seems a poor choice, but let\'s see ...'
  end
end
  