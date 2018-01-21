feature 'Enter name' do
  scenario 'submit the name of the player' do
    visit('/')
    fill_in :player_name, with: "Tiana"
    click_button 'Let\'s Play!'
    expect(page).to have_content 'Tiana vs. Computer!'
  end
end
