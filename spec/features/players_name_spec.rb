require 'capybara/rspec'

Capybara.configure do |config|
  
  config.default_driver = :selenium
  config.app            = 'Battle'
  config.app_host       = "http://localhost:4567"
  
end

feature 'Players names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Marco'
    fill_in :player_2_name, with: 'Matt'
    click_button 'Submit'
    expect(page).to have_content 'Marco vs. Matt'
  end
end