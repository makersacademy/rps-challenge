require 'spec_helper'

feature CSB do

  context '#play page' do
    scenario "page displays that player is playing the computer" do
      sign_in_and_play
      expect(page).to have_text("Rory vs Computer")

    end

  end


end
