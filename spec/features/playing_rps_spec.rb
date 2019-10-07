feature 'Play RPS' do

  scenario 'Asking if player wants to play' do
    sign_in
    expect(page).to have_content 'Do you want to play?'
    expect(page).to have_button 'Play'
  end

end
