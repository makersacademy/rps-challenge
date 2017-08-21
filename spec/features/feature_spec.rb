feature 'Game title' do
  scenario "Has the game name on the homepage" do
    visit '/'
    expect(page). to have_content("ROCK PAPER SCISSORS")
  end
end

feature 'Name shown on page' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content("Shoto")
  end
end

# feature 'Weapon pick' do
#   scenario 'picked ROCK' do
#     sign_in_and_play
#     click_button 'ROCK'
#     expect(page).to have_content 'Shoto picks ROCK'
#   end
#
#   scenario 'picked PAPER' do
#     sign_in_and_play
#     click_button 'ROCK'
#     expect(page).to have_content 'Shoto picks PAPER'
#   end
#
#   scenario 'picked SCISSORS' do
#     sign_in_and_play
#     click_button 'ROCK'
#     expect(page).to have_content 'Shoto picks SCISSORS'
#   end
# end
