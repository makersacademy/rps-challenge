feature 'Testing select tag options' do
  scenario 'page shows rock has been selected' do
    visit('/')
    fill_in 'p1_name', with: 'Oliver'
    click_button 'Enter'
    select 'Rock', from: 'move'
    expect(page).to have_content("Rock")
  end
  scenario 'page shows rock has been selected' do
    visit('/')
    fill_in 'p1_name', with: 'Oliver'
    click_button 'Enter'
    select 'Paper', from: 'move'
    expect(page).to have_content("Paper")
  end
  scenario 'page shows rock has been selected' do
    visit('/')
    fill_in 'p1_name', with: 'Oliver'
    click_button 'Enter'
    select 'Scissors', from: 'move'
    expect(page).to have_content("Scissors")
  end
end
