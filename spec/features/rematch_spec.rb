feature 'rematch' do
  background do
    enter_name_and_start_game
    click_button 'Rock!'
  end

  scenario "click button for rematch" do
    click_button 'Rematch!'
    expect(page).to have_content 'What is your move?'
  end

end
