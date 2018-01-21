feature 'Checking the option chosen' do
  scenario 'Check for Rock button' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_content 'Tiana vs. Computer!'
    click_button 'Rock'
    expect(page).to have_content 'Tiana chose Rock!'
  end

end
