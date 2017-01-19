require './app.rb'
require 'spec_helper'

RSpec.feature "Play", :type => :feature do
  scenario "Players name appears" do
    sign_in_and_play
    expect(page).to have_content "Louisa"
  end

  scenario "Can click on Rock option" do
    sign_in_and_play
    find('[id=rock]').click
    expect(page).to have_content "Louisa has chosen: Rock"
  end

  scenario "Can ciick on Paper option" do
    sign_in_and_play
    find('[id=paper]').click
    expect(page).to have_content "Louisa has chosen: Paper"
  end

  scenario "Can click on Scissors option" do
    sign_in_and_play
    find('[id=scissors]').click
    expect(page).to have_content "Louisa has chosen: Scissors"
  end

  scenario "Can see Computers choice after clicking a button" do
    sign_in_and_play
    find('[id=scissors]').click
    expect(page).to have_content "Computer has chosen:"
  end

end
