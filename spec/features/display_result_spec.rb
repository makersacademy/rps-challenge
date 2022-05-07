feature 'display result' do
  scenario 'shows selected option' do
    visit('/')
    fill_in :p1_name, with: 'Luiza'
    click_button 'Submit'
    choose('rock')
    click_button 'Play'
    expect(page).to have_content 'You picked rock'
  end
end