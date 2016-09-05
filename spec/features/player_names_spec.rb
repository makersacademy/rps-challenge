require 'spec_helper'

feature 'Entering names' do

  scenario 'Player enter their name' do
    sign_in
    expect(page).to have_content("Joseph's Game")
  end

end
