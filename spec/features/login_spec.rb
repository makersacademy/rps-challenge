require 'capybara/dsl'
require 'spec_helper'

feature "Login player" do
  scenario 'submitting names' do
    visit( '/' )
    fill_in :players_name, with: "Meerkat"
    click_button "Submit"
    expect(page).to have_content "Meerkat"
  end
end