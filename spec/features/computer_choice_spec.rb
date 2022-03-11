feature 'Computer chooses' do
  scenario 'player is shown computer choice' do
    sign_in
    choose 'rock'
    click_on 'Submit'
    click_on 'computer_choice'
    expect(page).to have_content 'Computer chose rock'
  end
end