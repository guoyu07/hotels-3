class BaseController < InheritedResources::Base
  def new
    new! { render :edit }
  end

  #def end_of_association_chain
  #  current_user
  #end
end
