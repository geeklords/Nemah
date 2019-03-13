class Post < ApplicationRecord
belongs_to :user

validates :title, :type_of_food, :description, presence: true
validates :amount, presence: true, :numericality => { :greater_than => 0 } 


ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    if html_tag =~ /\<label/
    html_tag
    else
     errors = Array(instance.error_message).join(',')
    %(#{html_tag}<span class="validation-error">&nbsp;#{errors}</span>).html_safe
    end
end

end