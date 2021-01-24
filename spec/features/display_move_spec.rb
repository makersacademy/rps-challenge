feature 'choose move' do
  scenario 'see confirmation' do
    visit('/')
    fill_in('name', with: 'Anna')
    click_button('Create Player')
    click_button('Rock')
    expect(page).to have_content('Anna chose Rock')
  end
end
