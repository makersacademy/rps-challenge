feature 'Entering player names' do
  subject (:x) {ComputerMove.new}
  scenario 'player name is entered and saved' do
    visit('/')
    fill_in('name', with: 'Jake')
    click_on('Submit!')
    allow(x).to receive(:random_move).and_return('Rock')
    expect(page).to have_content('Welcome Jake')
  end
end
