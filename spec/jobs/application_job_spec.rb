require 'rails_helper'

RSpec.describe ApplicationJob, type: :job do
  class TestJob < ApplicationJob
    def perform
      true
    end
  end

  it 'enqueue the job for later' do
    expect { TestJob.perform_later }.to have_enqueued_job
  end
end
