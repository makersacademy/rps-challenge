require 'spec_helper'

feature 'Home Page' do
  before :each do
    visit '/'
  end

  scenario 'user is asked to enter their name' do
    expect(page).to have_content "Please enter your name"
  end

  scenario 'there is a name form field' do
    expect(page).to have_field "name"
  end

  context "when user clicks 'new game' button after filling-in their name" do
    scenario 'user is taken to game page' do
      fill_in "name", with: "Andy"
      click_on 'New Game'
      expect(page).to have_content 'Select your weapon of choice:'
    end
  end
end