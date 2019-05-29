def rating_to_eggplants(rating)
    if rating == 0.0
        "No one review this movie yet."
    elsif rating <= 1.5 
        "🍆"
    elsif rating <= 2.5
        "🍆🍆"
    elsif rating <= 3.5
        "🍆🍆🍆"
    elsif rating <= 4.5
        "🍆🍆🍆🍆"
    elsif rating <= 5
        "🍆🍆🍆🍆🍆"
    end
end