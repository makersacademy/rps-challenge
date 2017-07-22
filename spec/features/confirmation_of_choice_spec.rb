feature "player gets confirmation of choice" do
  before { sign_in_and_play('Alex') }
  scenario "chooses Rock" do
    click_button 'Rock'
    expect(page).to have_content 'Alex chooses Rock!'
  end
end
