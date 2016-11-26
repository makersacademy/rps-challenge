require 'app.rb'
require 'spec_helper.rb'

feature "Playing the game" do

  scenario "Should ask player 1 to choose their move" do
    sign_in_with_dave
    expect(page).to have_content "Choose your move:"
  end

  scenario "Should have a rock button" do
    sign_in_with_dave
    expect(page).to have_xpath ("//button[@value='rock']")
  end

  scenario "Should have a paper button" do
    sign_in_with_dave
    expect(page).to have_xpath ("//button[@value='paper']")
  end

  scenario "Should have a scissors button" do
    sign_in_with_dave
    expect(page).to have_xpath ("//button[@value='scissors']")
  end

  scenario "Should have a lizard button" do
    sign_in_with_dave
    expect(page).to have_xpath ("//button[@value='lizard']")
  end

  scenario "should have a Spock button" do
    sign_in_with_dave
    expect(page).to have_xpath ("//button[@value='Spock']")
  end
end
