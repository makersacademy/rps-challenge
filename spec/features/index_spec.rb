# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature "Start page" do

  scenario "can run app and check page content" do
    visit('/')
    expect(page).to have_content "Super Rock-Paper-Scissors Turbo Alpha"
  end

  scenario "gives options for one player" do
    visit('/')
    click_button('One Player')
  end

  # scenario "redirects to one-player name page" do
  #   visit('/')
  #   click_button('One Player')
  #   expect(page).to have_content "Enter your name"
  # end

  # scenario "gives options for two players" do
  #   visit('/')
  #   click_button('Two Players')
  # end

  # scenario "redirects to two-player name page" do
  #   visit('/')
  #   click_button('Two Players')
  #   expect(page).to have_content "Enter player names"
  # end

end
