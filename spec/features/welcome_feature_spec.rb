feature 'the home page' do
  scenario 'user is welcomed to the app' do
    visit '/'
    expect(page).to have_content 'Hello! Welcome to Rock Paper Scissors! Please enter your name!'
  end
  scenario 'user inputs their name and is welcomed' do
    visit '/'
    fill_in :name, with: 'Chris'
    click_button 'Go!'
    expect(page).to have_content "Welcome, Chris!"
  end
end
