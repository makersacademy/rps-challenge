feature 'Game Score' do
  before(:each) { multiplayer_sign_in }
  scenario 'Scores are displayed on start as 0 - 0' do
    expect(page).to have_content('0 - 0')
  end
  scenario 'Score changes after 1st go' do
    choose('Rock')
    click_button('Go!')
    choose('Paper')
    click_button('Go!')
    expect(page).not_to have_content('0 - 0')
    expect(page).to have_content('0 - 1')
  end
end
