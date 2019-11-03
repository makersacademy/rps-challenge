feature 'result' do
  scenario 'win' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose 'round_choice', option: 'paper'
    click_button 'Submit'
    expect(page).to have_text 'Congratulations - you won!'
    expect(page).to have_content "Ali, you chose: paper"
  end

  scenario 'lose' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    choose 'round_choice', option: 'paper'
    click_button 'Submit'
    expect(page).to have_text 'Sorry you lost :('
    expect(page).to have_content "Ali, you chose: paper"
  end

  scenario 'draw' do
    allow(Kernel).to receive(:rand).and_return(1)
    sign_in
    choose 'round_choice', option: 'paper'
    click_button 'Submit'
    expect(page).to have_text 'You drew!'
    expect(page).to have_content "Ali, you chose: paper"
  end

end
