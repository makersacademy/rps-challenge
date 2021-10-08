feature 'Names' do 
  scenario 'user enters their name on the home page, it should be displayed on play page' do
    visit ('/')
    fill_in :player_1_name, with: 'Ronaldo'
    click_button 'Go'
    expect(page).to have_content 'Ronaldo'
  end
end 