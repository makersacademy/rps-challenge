feature 'Names' do 
  
  scenario 'user enters their name on the home page, it should be displayed on play page' do
    sign_up_play
    expect(page).to have_content 'Ronaldo'
  end

  scenario 'user faces CPU' do 
    sign_up_play   
    expect(page).to have_content 'CPU'
  end
end
