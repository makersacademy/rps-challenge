feature 'Player names' do
  scenario "Player enter their names" do
    sign_in_and_play
    expect(page).to have_text("Dan vs. Computer")
  end
end
