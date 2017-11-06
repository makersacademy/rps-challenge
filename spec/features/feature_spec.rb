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

feature 'Weapon pick' do
  scenario 'picked ROCK' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content 'Shoto picked rock'
  end

  scenario 'picked PAPER' do
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content 'Shoto picked paper'
  end

  scenario 'picked SCISSORS' do
    sign_in_and_play
    click_button 'SCISSORS'
    expect(page).to have_content 'Shoto picked scissors'
  end
end
