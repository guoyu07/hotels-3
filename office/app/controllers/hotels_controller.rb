class HotelsController < BaseController

  layout :hotels_layout

  def show
    render :general
  end

  def general
    resource
  end

  def create
    create! do |success, failure|
      success.html { redirect_to general_hotel_path(resource) }
      failure.html { render :new }
    end
  end

  def update
    update! { general_hotel_path(resource) }
  end

  protected

  def end_of_association_chain
    current_user.hotels
  end

  private

  def hotels_layout
    action_name == 'index' ? 'application' : 'hotel'
  end
end
