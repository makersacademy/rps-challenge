feature 'play again' do
  let(:name) { 'Will' }

  before do
    visit('/')
    click_link('Play')
    fill_in :name, with: name
    click_button('Confirm')
    click_button('Rock')
    click_link('Play again')
  end

  scenario 'pressing play again' do
    expect(page).to have_text('Will vs Computer')
  end
end
