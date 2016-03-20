feature 'Form takes name' do
  scenario 'player can input their name and it will appear on screen' do
    visit '/'
    fill_in :name, with: 'Adil'
    click_button 'submit'
    expect(page).to have_content('Adil, make your choice!')
  end
end
