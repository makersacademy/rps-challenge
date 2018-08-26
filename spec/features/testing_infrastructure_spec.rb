feature 'root page message' do
  scenario 'shows welcome message' do
    visit('/')
    expect(page).to have_content 'please enter your name'
  end
end

feature 'name form' do
  scenario 'welcomes name from form' do
    visit('/')
    fill_in :player, with: 'samir'
    click_button 'Enter Game'
    expect(page).to have_content 'Welcome samir!'
  end
end
