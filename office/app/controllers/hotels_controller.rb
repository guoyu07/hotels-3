class HotelsController < BaseController

  layout :hotels_layout

  protected

  def collection
    current_user.hotels
  end

  private

  def hotels_layout
    action_name == 'index' ? 'application' : 'hotel'
  end
end
