require 'spec_helper'

feature 'homepage' do
  scenario 'require user to enter name' do
    sign_in_and_play
    expect(page).to have_content 'Choose your weapon John'
  end
end
