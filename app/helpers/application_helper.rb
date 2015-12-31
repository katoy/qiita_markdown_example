# ApplicationHelper
module ApplicationHelper
  def qiita_markdown(markdown)
    processor = Qiita::Markdown::Processor.new
    processor.call(markdown)[:output].to_s.html_safe
  end
end
