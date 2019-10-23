module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty? && flash.empty?
    flash_alerts = get_flash_alerts
    error_messages = resource.errors.full_messages
    message_list = (flash_alerts + error_messages).map { |msg| content_tag(:span, msg) }.join
    html = build_html_message(message_list)
  end

  private

  def get_flash_alerts
    flash_alerts = []
    if !flash.empty?
      flash_alerts.push(flash[:error]) if flash[:error]
      flash_alerts.push(flash[:alert]) if flash[:alert]
      flash_alerts.push(flash[:notice]) if flash[:notice]
    end
    flash_alerts
  end

  def build_html_message(message_list)
    html = <<-HTML
    <div id='error_explanation' class='alert alert-secondary alert-dismissible fade show' role='alert'>
      #{message_list}
      <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
        <span aria-hidden='true'>&times;</span>
      </button>
    </div>
    HTML

    html.html_safe
  end
end
