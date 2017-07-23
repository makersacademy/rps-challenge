feature 'Two Player Set Up' do

  scenario 'player chooses battle mode' do
    visit('/')
    click_button "1 Player"
    expect(page).to have_content 'Enter your name'
  end

  scenario 'players enter names and start battle' do
    visit('/')
    click_button "2 Player"
    fill_in :player_1_name, with: "Sir R Spec"
    fill_in :player_2_name, with: "Lady Capybara"
    click_button "Go"
    expect(page).to have_content 'Sir R Spec vs. Lady Capybara'
  end

end
