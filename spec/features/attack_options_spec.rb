require 'spec_helper'
require_relative './web_helpers.rb'

feature "attack options" do
  scenario "there is a rock option" do
    sign
    click_button('Rock')
    expect(page).to have_content("Rock")
  end
end
