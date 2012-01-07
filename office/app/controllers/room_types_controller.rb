class RoomTypesController < BaseController

  belongs_to :hotel

  layout 'hotel'

  def new
    build_resource
    render :edit
  end

  def show
    resource
    render :edit
  end

end
