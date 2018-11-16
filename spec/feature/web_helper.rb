def sign_in_and_submit
visit('/')
fill_in 'name', with: 'Nim'
click_button "Go!"
end
