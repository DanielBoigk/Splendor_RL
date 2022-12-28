# Supposed to list all possible actions given a game state
# write function that returns all actions from given state as dictionary

struct player_action
    action1::Bool #Purchase Card
    action2::Bool #Reserve Card
    action3::Bool # Take 3
    action4::Bool # Take 2
    action5::Bool #Reserve Random
    #Results
    point_change::Int8
    
    slot_change::Int8
    
end


# Write method that coverts action space into float array