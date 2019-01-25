
feature 'Enter name' do
  scenario 'should enter name' do
    visit('/')
    fill_in :player, with: 'Debora'
    click_button 'Submit'
    expect(page).to have_content "Debora wants to play Rock, Paper, Scissors!"
  end
end
