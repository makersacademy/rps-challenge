
feature "Declare winner" do
  scenario 'The winner of the round is named, or draw' do
    enter_name_and_play
    srand(1)
    click_button 'Rock'
    expect(page).to have_content("The winner is: The computer :(")
  end
end
