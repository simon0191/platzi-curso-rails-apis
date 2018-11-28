class HealthController < ApplicationController
  def health
    render json: {api: 'OK'}, status: :ok
  end
end
