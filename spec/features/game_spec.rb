require_relative 'web_helper'
feature 'checks that name appears on play page' do
  scenario 'player lose' do
    sign_in
    click_on 'rock'
    expect(page).to have_content('has won')
  end
end
