module EventsHelper
  def display_event_state(event)
    case event.state
    when  "draft"
      "草稿"
    else
      ""
    end
  end
end
