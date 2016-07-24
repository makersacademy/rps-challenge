#feature "player enters names" do
#  scenario'user sees page to enter his name' do
#    visit'/'
#    expect(page).to have_content("Please enter your name")
#  end
#  scenario'user enters his name' do
#    visit'/'
#    fill_in "player_1", :with => "Samed"
#    click_button "Submit"
#    expect(page).to have_content ("Samed")
#  end
#
#end

feature "user chooses if he plays against computer or another player" do
  scenario "user can choose between single mode and mutliplayer" do
    visit '/'
    expect(page).to have_content("Rock Scissor Paper Please choose your play mode Single-player mode Multi-player mode")
  end
end
