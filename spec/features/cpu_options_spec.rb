feature 'Testing the random cpu move' do
  scenario 'page shows rock has been selected' do
    visit('/')
    fill_in 'p1_name', with: 'Oliver'
    click_button 'Enter'
    select 'Rock', from: 'move'
    visit('/result')
    expect(page).to have_content("The computer's move was")
  end
end
