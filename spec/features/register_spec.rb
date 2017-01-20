# in spec/features/register_spec.rb

feature 'register' do
  scenario 'submit one player name' do
    visit('/register')
    fill_in :p1_name, with: 'Me'
    click_button 'Submit'
    expect(page).to have_content 'Me vs. The Computer'
  end
end
