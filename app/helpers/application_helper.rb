module ApplicationHelper

  def make_readable(date)
    date.in_time_zone("Eastern Time (US & Canada)").to_formatted_s(:long_ordinal)
  end
end
