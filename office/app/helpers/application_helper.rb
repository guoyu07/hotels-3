module ApplicationHelper
  def alert_class flash_name
    # warning, error, success, info
    {
        alert: 'warning',
        notice: 'info'
    }[flash_name] || flash_name
  end

  def page_header
    @page_header ||=
        if content_for?(:page_header)
          content_for(:page_header)
        else
          params[:page_header]
        end
  end
end
