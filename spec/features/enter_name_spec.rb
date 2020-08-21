feature 'Enter name test' do
  scenario 'submitting player name' do
    visit('/')
    fill_in "name", with: 'Tam'
    click_button 'Submit'
    expect(page).to have_content 'Hi Tam! Choose Rock, Paper or Scissors'
  end
end
