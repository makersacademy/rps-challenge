require 'spec_helper'

feature 'display_points' do

  scenario 'at startup it should display initial points as 0' do
    sign_in_and_play
    expect(page).to have_text("Matthew 0")
  end

end
