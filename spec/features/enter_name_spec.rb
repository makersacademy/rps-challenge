feature 'Entering name' do
  scenario 'Checks that the name input posts onto play page' do
    visit('/')
    fill_in :name, with "Jake"
    click_button 'Play!'
    expect(page).to have_content "Player: Jake"
  end
  end
