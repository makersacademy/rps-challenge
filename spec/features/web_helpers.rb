def sign_in
visit '/'
fill_in 'name', with: 'Matt'
click_button 'Submit'
end
