require 'spec_helper'

feature "Play RPS" do
  
  scenario "User plays rock, paper, scissors" do
    sign_in
    expect(page).to have_content("Rock")
  end

end
