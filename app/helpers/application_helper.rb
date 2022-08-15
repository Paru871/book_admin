module ApplicationHelper
  def to_hankaku(str)
    str.tr("Ａ-Ｚ ａ-ｚ","A-Z a-z")
  end
end
