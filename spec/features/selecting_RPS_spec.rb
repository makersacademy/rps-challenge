feature 'Player can select Rock Paper or Scissors' do
  scenario 'Selecting RPS' do
    sign_in
    select "Paper", :from => "choice"
    click_button 'submit'
    expect(page).to have_content 'You chose paper'
  end
end
