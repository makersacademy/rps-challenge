require './app.rb'
require_relative 'web_helpers'

feature 'click rock' do


  scenario "there is a button play again" do
    sign_in
    fill_in :attack, with: :rock
    click_button "choose"
    expect(page).to have_button "Play again"
  end



end
