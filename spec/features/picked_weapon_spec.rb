feature 'Picked weapon rb' do
  scenario 'player picked weapon' do
    sign_in_and_play_single
    click_button 'rock'
    expect(page).to have_content 'Justyna picked rock.'
  end

  feature 'Picked weapon rb' do
    scenario 'player picked weapon' do
      sign_in_and_play_multi
      click_button 'rock'
      expect(find('div.title')).to have_content('Justyna vs. Igor')
      expect(find('div.information')).to have_content('Igor, pick your weapon.')
    end
  end
end
