feature 'Checking the option chosen' do
  scenario 'Check for Rock button' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_content 'Tiana vs. Computer!'
    click_button 'Rock'
    expect(page).to have_content 'Tiana chose Rock!'
  end

  scenario 'Check for Paper button' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_content 'Tiana vs. Computer!'
    click_button 'Paper'
    expect(page).to have_content 'Tiana chose Paper!'
  end

  scenario 'Check for Scissors button' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_content 'Tiana vs. Computer!'
    click_button 'Scissors'
    expect(page).to have_content 'Tiana chose Scissors!'
  end

end
