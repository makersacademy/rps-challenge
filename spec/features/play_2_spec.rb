feature 'Choices available', :type => :feature do
  scenario 'multiplayer' do
    mode_two_players_classic
    click_button("rock")
    expect(page).to have_content 'Paco'
  end
end