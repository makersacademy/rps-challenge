feature 'Presented with options' do
  scenario 'When player starts the game they are presented with 3 options' do
    fill_in_name_and_submit
    expect(page).to have_content "Please select an option"
    expect(page).to have_css("input", :count => 3)
  end

  scenario 'When player selects Rock they see that in the response' do
    fill_in_name_and_submit
    click_button "Rock"
    expect(page).to have_content "You selected Rock"
  end
end
