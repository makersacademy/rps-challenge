require 'spec_helper'

feature "can log in single_player" do
  it "shows name in game screen" do
    sign_in
    expect(page).to have_content "Hobbes"
  end
end
