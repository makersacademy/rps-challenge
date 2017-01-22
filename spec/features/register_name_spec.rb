#I would like to register my name before playing an online game
feature '#register'do
  scenario 'it allows player to input name' do
    visit('/')
    fill_in :name, with: 'Olwen'
    click_button "Submit name"
    expect(page).to have_content('Olwen')
  end
end
