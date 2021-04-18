feature 'return home button' do
  scenario 'after loss can click return home button' do
    allow_any_instance_of(Game).to receive(:rand).and_return(1)
    sign_in_and_play
    click_button 'Rock'
    click_button 'Restart'
    expect(page).to have_content 'Enter name:'
  end
  scenario 'after win can click return home button' do
    allow_any_instance_of(Game).to receive(:rand).and_return(2)
    sign_in_and_play
    click_button 'Rock'
    click_button 'Restart'
    expect(page).to have_content 'Enter name:'
  end
  scenario 'after draw can click return home button' do
    allow_any_instance_of(Game).to receive(:rand).and_return(0)
    sign_in_and_play
    click_button 'Rock'
    click_button 'Restart'
    expect(page).to have_content 'Enter name:'
  end
end