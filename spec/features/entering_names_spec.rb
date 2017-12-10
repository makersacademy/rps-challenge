feature 'Entering names' do
  scenario "players can enter their names" do
    sign_in_and_play
    expect(page).to have_content 'Lan vs. Computer'
  end
end
