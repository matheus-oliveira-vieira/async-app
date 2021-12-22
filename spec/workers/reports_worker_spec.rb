require 'rails_helper'

describe ReportsWorker do
  it 'generates report' do
    Sidekiq::Testing.inline! do
      ReportsWorker.perform_async
    end
  end
end