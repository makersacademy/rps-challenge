feature 'enter names' do
  scenario "player inputs a name and expects the name to appear on screen" do
      sign_in_and_play
      expect(page).to have_content 'Hi Scooby Doo!'
  end
end