feature 'Results page' do
  scenario 'Player chooses rock, computer chooses paper' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button('Submit')
    click_button('Rock')
    allow(Kernel).to receive(:rand).and_return(0)
    expect(page).to have_content 'Computer wins!'
  end
end