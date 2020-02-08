require 'spec_helper'

feature "Can enter name" do
  scenario "And show it on screen" do
    sign_in_and_begin
    expect(page).to have_content("Josh vs. Computer")
  end
end
