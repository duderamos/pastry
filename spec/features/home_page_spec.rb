require 'rails_helper'

feature 'Home page' do

  scenario 'visit' do
    visit root_path
    expect(page).to have_title 'Pastry'
    expect(page).to have_content 'Pastry - Network Hosts Control'
  end

end
