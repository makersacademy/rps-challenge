feature 'Entering name' do
  scenario 'Submitting name' do
    visit('/')
    fill_in :name, with: 'James'
    click_button 'Lets play!'
    expect(page).to have_content 'Hi James, lets play Rock Paper Scissors!'
  end
end
