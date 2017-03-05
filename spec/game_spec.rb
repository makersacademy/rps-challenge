require './lib/choice'
describe Game do
  describe "enter name " do
  it'enters name' do
   visit('/')
   sign_in
   expect(page).to have_content("Player's name is :John")
  end
 end
end
