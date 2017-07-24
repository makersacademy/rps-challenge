feature 'Enter name' do
  scenario 'submitting player name' do
    visit '/'
    fill_in :name, with: 'Pipes'
    click_button 'Go!'
    expect(page).to have_content 'Well hello, Pipes!'
  end
end
