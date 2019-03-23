feature 'Submits Name' do
  scenario 'Takes the name of the marketeer' do
    visit ('/')
    fill_in(:name, with: 'Lola')
    click_button 'Register!'
    expect(page).to have_content "Lola" 
  end
end