require 'app.rb'
require 'spec_helper.rb'

feature "Sign in" do
  scenario "with one player vs PC" do
    visit '/'
    fill_in :player1, with: "Dave"
    click_button 'okay'
    expect(page).to have_content "Dave vs. CPU"
  end
end
