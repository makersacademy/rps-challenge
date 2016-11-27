require 'spec_helper'

feature "attack options" do
  scenario "there is a rock option" do
    sign_in_and_submit_name
    click_button('Rock')
    expect(page).to have_content("A chose rock,")
  end
end
