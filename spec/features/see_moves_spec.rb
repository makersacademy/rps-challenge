feature 'Seeing moves' do

  scenario 'Page has moves to select' do
    sign_in
    click_button 'Play'
    expect(page).to have_button ('rock')
    expect(page).to have_button ('paper')
    expect(page).to have_button ('scissors')
  end

end
