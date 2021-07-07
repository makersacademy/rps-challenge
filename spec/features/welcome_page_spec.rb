feature 'Welcome page' do

  scenario 'player wants a practice game' do
    visit('/')
    expect(page).to have_selector("input[type=submit][value='Practice']")
  end

  scenario 'players invited to enter names' do
    visit('/')
    expect(page).to have_content "Enter your name"
  end

  scenario 'two player option offered' do
    visit('/')
    expect(page).to have_selector("input[type=submit][value='2 player throwdown']")
  end

end
