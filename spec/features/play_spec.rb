feature 'Play Screen' do

  scenario 'Displays Play Screen welcome message' do
    visit '/'
    fill_in(:player_1_name, with: "Paul")
    click_button 'Submit'
    expect(page).to have_content("Let's Play!")
  end


end
