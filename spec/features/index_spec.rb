feature 'Register Name Page' do
  scenario 'has title at top of page' do
    visit('/')
    expect(page).to have_content "ROCK PAPER SCISSORS"
  end

  scenario 'has subtitle below title' do
    visit('/')
    expect(page).to have_content "THE TIMELESS CLASSIC"
  end

  scenario 'has subtitle below title' do
    visit('/')
    expect(page).to have_content "FIRST TO 3 WINS"
  end
end
