
feature "Computer's move" do
  scenario 'Have the computer select a move and confirm it' do
    enter_name_and_play
    srand(5)
    click_button 'Rock'
    expect(page).to have_content "The computer has chosen: Scissors"
  end
end
