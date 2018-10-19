feature 'Start Game' do
  scenario 'submit name' do
    visit('/')
    click_button "Start Game"
    fill_in :name, with: 'Ryan'
    click_button 'Play'
    expect(page).to have_content 'Ryan VS RPS'
  end
end
