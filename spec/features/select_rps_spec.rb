feature 'Select rock paper scissors' do
  scenario 'View your choice after making a selection' do
    visit('/')
    fill_in :player, with: 'Freddy'
    click_button('Submit')
    choose('Rock')
    click_button ('OK')
    expect(page).to have_content("You chose Rock")
  end

end
