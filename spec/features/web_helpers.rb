def select_sp_and_sign_in
  visit('/')
  click_button 'Singleplayer'
  fill_in :name, with: 'Jess'
  click_button 'submit'
end

def select_mp_and_sign_in
  visit('/')
  click_button 'Multiplayer'
  fill_in :name1, with: 'Jess'
  fill_in :name2, with: 'Bob'
  click_button 'submit'
end
