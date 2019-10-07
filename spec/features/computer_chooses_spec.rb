require "././app.rb"
require_relative 'web_helpers.rb'

feature "computer chooses" do
  scenario "computer 'chooses' between rock, paper and scissors" do
    sign_in_and_play
    click_on 'rock'
    expect(page).to have_selector(:link_or_button, 'computer choice')
    allow_any_instance_of(Array).to receive(:sample).and_return("paper")
    click_on 'computer choice'
    expect(page).to have_content('The computer chose paper')
  end
end
