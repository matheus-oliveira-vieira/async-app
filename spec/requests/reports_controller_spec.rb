require 'rails_helper'

describe 'Reports', type: :request do
  it 'Create report worker' do
    reports_size = Dir.entries("#{Rails.root.join('public')}/reports").size-2
    Sidekiq::Testing.disable! { post '/reports' }
    sleep 10
    expect(Dir.entries("#{Rails.root.join('public')}/reports").size-2).to eq(reports_size + 1)
  end
end