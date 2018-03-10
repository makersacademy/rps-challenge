feature 'Enter Name' do
  scenario 'Can enter name in form' do
    sign_in_and_play
    within('div.congrats') do
      expect(page).to have_content 'Congrats! Your username is now Dave'
    end
  end
end
