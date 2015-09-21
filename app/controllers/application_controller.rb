class ApplicationController < JSONAPI::ResourceController
  before_action :delay

  def delay
    # sleep(3)
  end

  rescue_from StandardError do |exception|
    render json: {
      status: 500,
      title: 'Internal server error'
    }, status: 500

    throw exception
  end
end
