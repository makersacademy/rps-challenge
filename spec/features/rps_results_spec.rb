require 'spec_helper'

feature "Results of RPS battle shown" do
  scenario "Results of RPS" do
    sign_in
    select_choice
    expect(page).to have_content("Results!")
  end
end
