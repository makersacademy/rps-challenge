feature 'clicks either rock paper or scissors button' do
  scenario 'clicks button goes to playing page' do
    sign_in
    click_button 'Rock'
    expect(page).to have_content 'Dill chose rock'
  end
end
