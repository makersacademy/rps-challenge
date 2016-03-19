require 'spec_helper'

feature '/names' do
  scenario 'player1\'s name will appear after it has been entered.' do
    sign_in
    expect(page).to have_content('Welcome to the game Charlie and Roxanne')
  end
end
