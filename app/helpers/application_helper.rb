module ApplicationHelper
  def alert_class flash_name
    # warning, error, success, info
    {
        alert: 'warning',
        notice: 'info'
    }[flash_name] || flash_name
  end
end
