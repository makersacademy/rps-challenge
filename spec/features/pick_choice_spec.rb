feature 'Pick option' do
  scenario 'When player chooses option should show the option on the page' do
    visit('/play')
    select( 'Rock', :from => 'option')
    click_on 'Submit'
    expect(page).to have_content 'You chose Rock'
  end
end
