class FoundationFormBuilder < ActionView::Helpers::FormBuilder
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::TextHelper

  attr_accessor :output_buffer

  def text_field(attribute, options={})
  content_tag(:div, class: "field") do
      super(attribute, options)
  end
end

def wrapper(options={}, &block)
  content_tag(:div, class: "row") do
    content_tag(:div, capture(&block), class: "small-12 columns")
  end
end
end