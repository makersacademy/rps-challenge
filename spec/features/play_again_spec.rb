feature 'Playing again' do
  scenario 'When player select Play Again they return to the first screen' do
    fill_in_name_and_submit
    click_button "Rock"
    click_button "Play Again"
    expect(page).to have_content("Please enter your name")
  end
end
