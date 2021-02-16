class ApiController < ApplicationController
  include Knock::Authenticable

  before_action :authenticate_user
  before_action :set_default_format
  skip_before_action :verify_authenticity_token




  private

  def set_default_format
    request.format = :json
  end
end
