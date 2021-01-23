# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature "Start page" do

  scenario "can run app and check page content" do
    visit('/')
    expect(page).to have_content "Super Rock-Paper-Scissors Turbo Alpha: Ultimate Grudge Match"
  end

  scenario "gives options for one player" do
    visit('/')
    click_button('One Player')
  end

  # scenario "redirects to one_player name page if player clicks One Player" do
  #   visit('/')
  #   click_button("One Player").to have_content "One Player"
  # end

end
