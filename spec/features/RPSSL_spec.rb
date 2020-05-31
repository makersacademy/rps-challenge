feature 'RPSSL' do
  feature '/' do
    scenario 'has an option to play RPSSL' do
      visit('/')
      expect(page).to have_content("RPS or RPSSL")
    end
  end
  feature '/move' do
    scenario 'be able to pick "Spock"' do
      visit('/')
      fill_in 'name', with: 'Rae'
      select("RPSSL", from: "RPSSL")
      submit
      select("Spock", from: 'move')
      submit
      expect(page).to have_content("Rae played Spock")
    end
  end
end
