feature 'choosing an option' do
  xscenario 'chooses rock and sees confirmation' do
    sign_up_and_go
    click_button 'Play'
    click_link 'Rock'
    expect(page).to have_content 'Frank chose Rock'
  end
end
