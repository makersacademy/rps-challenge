features 'Enter Name' do

  scenario 'expect form'do
    visit('/')
    expect(page).to have_css('form')
   end

  scenario 'fills in name' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Welcome Ana! Lets play a game'
    end
 end
