require 'spec_helper'

feature 'register player' do
  scenario 'fill in form with name' do
    sign_in_and_play
    expect(page).to have_content('Radu')
  end
end
