feature 'Testing abilty to enter name' do

  scenario 'Able to enter your name on home page' do
    visit('http://localhost:4567/')
    fill_in 'player', with: 'Will'
    click_button 'Submit'
    expect(page).to have_content 'Will'
  end
end
