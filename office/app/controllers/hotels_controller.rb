class HotelsController < BaseController
  protected

  def collection
    current_user.hotels
  end
end
