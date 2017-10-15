

feature 'button for deciding what weapon the computer chooses' do
  scenario 'button clicks through to next page' do
    visit ('/choice')
    click_button ('Computer')
  end
end
