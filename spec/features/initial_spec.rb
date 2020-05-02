require 'spec_helper'

feature 'Homepage' do

  scenario "page loads successfully" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "Page informs user of Game" do
    visit("/")
    expect(page).to have_content("Ready to play Rock, Paper, Scissors?!")
  end
end 
