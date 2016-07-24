require 'spec_helper'

feature "Names" do
  scenario 'Adding player name' do
    sign_in
    expect(page).to have_content "Player = Adam"
  end
end
