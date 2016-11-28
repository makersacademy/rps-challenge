require 'spec_helper'

RSpec.feature"Plays a round of rock, paper, scissors", :type => :feature do

scenario "player chooses rock for their first move" do
    enter_name
    click_button("Play")
    click_button("Rock")
    expect(page).to have_content("You selected rock")
end

# scenario "computer plays a counter move" do
#   enter_name
#   click_button("Play")
#   #click_button("Rock")
#   expect(page).to have_content("Your opponent selected rock")
# end

end
