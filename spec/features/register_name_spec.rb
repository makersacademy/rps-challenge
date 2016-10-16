require 'spec_helper'

feature 'register names' do
  scenario 'when a name is inputted' do
    sign_in_and_play
    expect(page).to have_content "Malinna"
  end
end
