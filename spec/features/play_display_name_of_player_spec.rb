feature 'page displays name of the player' do
  scenario 'visible name of the player' do
    sign_in_and_play_single
    expect(find('div.title')).to have_content('Justyna vs. Computer')
  end
end

feature 'page displays name of the player' do
  scenario 'visible name of the player' do
    sign_in_and_play_multi
    expect(find('div.title')).to have_content('Justyna vs. Igor')
  end
end
