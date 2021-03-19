feature 'Register name' do
  scenario 'has a field to input name and displays name' do
    sign_in_and_play
    expect(page).to have_content("Taran")
  end
end

feature 'Select and display a choice' do
  scenario 'Player picked rock from a select, displays rock' do
    sign_in_and_play
    select 'Rock', from: 'choices'
    click_button('Confirm')
    expect(page).to have_content("Rock")
  end
end