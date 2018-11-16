feature 'Human player register name' do
  scenario "Human enters name and this is shown on next page" do
    sign_in()
    expect(page).to have_text("Human player: Ben")
  end
end

feature 'Computer player registered' do
  scenario "Human starts game and computer player shown " do
    sign_in()
    expect(page).to have_text("Computer player present")
  end
end
