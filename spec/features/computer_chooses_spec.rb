require "././app.rb"
require_relative 'web_helpers.rb'

feature "computer chooses" do
  scenario "computer 'chooses' between rock, paper and scissors" do
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_selector(:link_or_button, 'computer choice')
    click_on 'computer choice'
    expect(page).to have_content('The computer chose rock')
  end
end
