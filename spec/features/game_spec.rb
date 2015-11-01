feature 'Playing the game' do
  scenario 'I can choose a weapon' do
    register_and_play 'Chuka'
    select "Rock", :from => "choose"
    click_button 'Submit'
    expect(page).to have_content('Chuka chose Rock')
  end
end
