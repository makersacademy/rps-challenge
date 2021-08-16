feature 'user chooses an option' do

  scenario "user should be presented with 3 choices" do
    ready_to_play
    expect(page).to have_content "Please select one of the following:"
  end

  scenario "user choice should return user choice" do
    ready_to_play
    click_button('rock')
    expect(page).to have_content "You chose rock"
    expect(page).not_to have_content "You chose paper"
    expect(page).not_to have_content "You chose scissors"
  end

end