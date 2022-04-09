require_relative '../../app'

feature "Draw is declared" do
  scenario "when both players make the same move" do
    choose_rock
    srand 0
    click_button 'Submit'
    expect(page).to have_content "It's a draw."
  end
end
