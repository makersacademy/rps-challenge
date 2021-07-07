feature 'Welcome page' do
  scenario 'displaying welcome message' do
    visit('/')
    expect(page).to have_text("Welcome")
  end

  scenario 'submitting name' do
    visit('/')
    fill_in :player_1, with: "test player"
    click_button 'Submit'
    expect(page).to have_content 'test player is playing'
  end
end
