feature 'Enter names' do
  scenario 'Registration page' do
    visit('/')

    expect(page).to have_content 'Play Rock Paper Scissors'
  end

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Sherif'
    click_button 'Start'

    expect(page).to have_content 'Welcome Sherif, let\'s start'
  end
end
