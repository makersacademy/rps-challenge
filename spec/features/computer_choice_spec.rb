feature 'Computer picks a weapon' do
  scenario 'Computer displays either rock, paper or scissors' do
    visit ('/computer_choice')
    expect(page).to have_content 'The computer chooses rock'
  end
end
