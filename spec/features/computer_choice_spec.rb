feature 'Computer choice' do
  scenario 'Computer will generate a choice' do
    fill_form
    page.select 'Rock', from: 'choice'
    click_button 'Submit'
    expect(page).to have_content 'Computer chose scissors'
  end
end
