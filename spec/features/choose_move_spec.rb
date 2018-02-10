feature 'choose rock, paper, scissors' do
  scenario 'see choices displayed' do
    sign_in
    expect(page).to have_content 'Rock, Paper, Scissors?'
  end

  scenario 'be able to click on the choices' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Daniel chooses Rock!'
  end
end
