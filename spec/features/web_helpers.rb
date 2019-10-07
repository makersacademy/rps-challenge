def sign_in
  visit('/')
  fill_in :player, with: 'Archie'
end
