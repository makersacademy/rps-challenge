feature 'RPS' do
  scenario 'welcome player on the homepage' do
    visit('/')
    expect(page).to have_content "Hello there,  player! \n welcome to the RPS game, please fill in your name down below:"
  end

  scenario 'player fills in the name form' do
    visit('/')
    fill_in :names, with: "Jane"
    click_button 'Submit'
    expect(page).to have_content "Hi, Jane! Excited to have you here!"
  end
end
