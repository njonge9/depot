class Cart < 
    has_many :line_items, dependent: :destroy
end
