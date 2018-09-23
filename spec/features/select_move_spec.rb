
feature 'Select move' do
  scenario 'Select move and have it confirmed' do
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content "You have chosen: Rock"
  end
end
