feature 'CPU move' do
  background do
    enter_name_and_start_game
    srand(3)
    click_button 'Rock!'
  end

  scenario "the computer's move is displayed" do
    expect(page).to have_content 'CPU picked scissors.'
  end
end
