require './app.rb'
require 'spec_helper'

RSpec.feature "Finish", :type => :feature do

  scenario "Displaying if Won, Lost or Draw" do
    sign_in_and_play
    find('[id=scissors]').click
    expect(page).to have_content(/Louisa has won!|Louisa has lost!|It's a draw!/)
  end

end
