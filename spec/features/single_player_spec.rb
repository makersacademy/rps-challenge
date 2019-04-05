feature 'can play single player' do
  scenario 'can play on your own' do
    visit ('/')
    sign_in_and_play
    expect(page).to have_content "Josh vs. Computer"
  end

  scenario 'can pick an option' do
    visit ('/')
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Josh picked Rock"
  end

  scenario 'computer picks an option' do
    visit ('/')
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Computer picked"
  end

  scenario 'shows who won' do
    visit ('/')
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Wins!"
  end
end
