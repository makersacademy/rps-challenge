feature 'Entering name' do
  scenario 'takes you to the play page with users name' do
    visit('/')
    fill_in :name, with: "Erin"
    click_button 'Go!'
    expect(page).to have_content "Player: Erin"
  end
end
