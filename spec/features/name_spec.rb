require_relative 'web_helper'
feature 'checks that name appears on play page' do
  scenario 'singleplayer' do
    sign_in
    expect(page).to have_content('John vs. Computer')
  end

  scenario 'multiplayer' do
    sign_in_multiplayer
    expect(page).to have_content('John vs. James')
  end
end
