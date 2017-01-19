require 'spec_helper'

RSpec.feature 'take name' do
  scenario 'we want to take players name' do
    visit('/')
    expect(page).to have_content("Enter your name!")
  end

  scenario 'we want the player to b able to sumbit their name and see it' do
    sign_in
    expect(page).to have_content("Hi Tom")
  end
end
