module ExpensesHelper

 def set_form_icon(category)
      case category
      when "car" then 'car'
      when "hotel" then 'bed'
      when "food" then 'cutlery'
      when "travel" then 'suitcase'
      when "phone" then 'phone'
      when "other" then 'search'
      end
 end

end
