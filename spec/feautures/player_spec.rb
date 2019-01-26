feature 'Enter name' do
  scenario 'there is a form on the homepage' do
    visit('/')
    expect(page).to have_field(type: 'text')
  end

  scenario 'you see confirmation of your name' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Hello Bob!'
  end
end
