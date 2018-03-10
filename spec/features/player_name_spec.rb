feature 'Enter Name' do
  scenario 'Can enter name in form' do
    sign_in_and_play
    within('div.battlenames') do
      expect(page).to have_content 'Dave vs Mittens'
    end
  end
end
