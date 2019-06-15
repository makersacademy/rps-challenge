require "././app.rb"
require_relative 'web_helpers.rb'

feature "computer chooses" do
  xscenario "computer 'chooses' between rock, paper and scissors" do
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_selector(:link_or_button, 'computer choice')
    #want to stub in what computer_choice is to paper
    click_on 'computer choice'
    expect(page).to have_content('The computer chose paper')
  end
end
