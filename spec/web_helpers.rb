def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Nova'
  fill_in :player_2, with: 'Zeratuul'
  click_button 'Submit'
end
