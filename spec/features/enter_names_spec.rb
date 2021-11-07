feature 'Getting players names' do
  scenario 'can submit names' do
    visit('/')
    expect(page).to have_content 'Please enter your name below'
  end
end

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Charlotte'
    click_button 'Play'
    expect(page).to have_content 'vs. Invincible computer!'
  end
end
