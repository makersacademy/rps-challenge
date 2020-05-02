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

  scenario "Page asks user to enter name to begin" do
    visit("/")
    expect(page).to have_field("name")
  end

  scenario "Page has a begin button" do 
    visit("/")
    expect(page).to have_button("begin")
  end 
end 
