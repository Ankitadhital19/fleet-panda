class ApisController < ApplicationController
  def fetch_data
    ApiFetcherWorker.perform_async
    render plain: 'API fetch job enqueued'
  end
end
