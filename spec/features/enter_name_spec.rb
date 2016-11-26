require 'spec_helper'

feature "player name", :type => :feature do
  scenario "can enter name for human player" do
    visit('/')
    fill_in('name', with: 'A')
    click_button('Submit')
    expect_page.to have_content("A vs. HAL 9000")
  end
end
