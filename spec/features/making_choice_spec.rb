feature 'making choice' do
  scenario 'display player choice' do
    sign_in
    click_on 'rock'
    expect(page).to have_content 'You picked rock!'
  end
end