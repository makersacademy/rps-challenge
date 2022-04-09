feature 'result' do
  scenario ' page displayes the result' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "The final result"
  end
end