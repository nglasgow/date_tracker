module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Date_Tracker").join(" - ")
      end
    end
  end
end
