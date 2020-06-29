feature "a winner is announced" do
  scenario "A winner is announced after the players have had their go" do
    visit('/')
    fill_in "player_one_name", :with => "Matthew"
    click_button "submit"
    select 'Scissors', from: 'choice'
    click_button "submit"
    computer = Computer.new
    expect(page).to have_content "It's a Draw!"
  end
end