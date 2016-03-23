feature 'Form takes name' do
  scenario 'player can input their name and it will appear on screen' do
    sign_in
    expect(page).to have_content('Adil, make your choice!')
  end
end
