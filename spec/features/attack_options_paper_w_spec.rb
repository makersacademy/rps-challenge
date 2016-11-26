require 'spec_helper'

feature "attack options" do
  scenario "there is a paper option" do
    sign_in_and_submit_name
    click_button('Paper')
    expect(page).to have_content("A chose paper, HAL 9000 chose rock. A won.")
  end
end
