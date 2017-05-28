feature "The player can choose a weapon of their choice" do
  scenario "Player can choose the rock button" do
    sign_in_and_register
    click_button('Rock')
    expect(page).to have_content "You chose [:rock]!"
  end
  scenario "Player can choose the paper button" do
    sign_in_and_register
    click_button('Paper')
    expect(page).to have_content "You chose [:paper]!"
  end
  scenario "Player can choose the scissor button" do
    sign_in_and_register
    click_button('Scissor')
    expect(page).to have_content "You chose [:scissor]!"
  end
end
