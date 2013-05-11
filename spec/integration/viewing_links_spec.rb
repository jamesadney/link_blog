require 'spec_helper'

feature 'Viewing Links' do
  scenario "links are shown in order from newest to oldest" do
    Factory.create(:link, :title => "Link 1")
    Factory.create(:link, :title => "Link 2")
    Factory.create(:link, :title => "Link 3")
    visit '/'
    page.body.delete("\n").should =~ /Link 3.+Link 2.+Link 1/
  end
end