feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content "Rock! Paper! Scissors!"
  end
end

feature 'Player registration' do
scenario 'Players fill in their names and see them on screen' do
    visit('/')
    fill_in 'player_name', with: "Rocky 'Scissor-Widowmaker' Balboa"
    click_button 'Submit'
    expect(page).to have_content "Rocky 'Scissor-Widowmaker' Balboa"
  end

end
