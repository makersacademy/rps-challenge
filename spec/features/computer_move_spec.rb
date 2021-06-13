feature 'CPU move' do
  scenario "the computer's move is displayed" do
    enter_name_and_start_game
    srand(3)
    click_button 'Rock!'
    expect(page).to have_content 'CPU picked scissors.'
  end
end
