mutable struct card
    card_quality::Int8
    card_points::Int8
    card_color::Int8
    
    green_cost::Int8
    red_cost::Int8
    blue_cost::Int8
    white_cost::Int8
    black_cost::Int8
    card_ingame::Bool
end   

mutable struct player_state
    player_number::Int8
    points::Int8
    coin_count::Int8 
    free_slot::Int8 #Number of cards the player can still reserve
    
    
    gold_coin::Int8
    
    green_coin::Int8
    red_coin::Int8
    blue_coin::Int8
    white_coin::Int8
    black_coin::Int8
    # Wie zum F deklariert man ein Tupel?
    green_PP::Int8
    red_PP::Int8
    blue_PP::Int8
    white_PP::Int8
    black_PP::Int8
    
    card_1::card
    c1_ishidden::Bool
    card_2::card
    c2_ishidden::Bool
    card_3::card
    c3_ishidden::Bool
end

mutable struct noble # 6 
    points::Int8
    green_cost::Int8
    red_cost::Int8
    blue_cost::Int8
    white_cost::Int8
    black_cost::Int8
end



mutable struct card_state #Remembers whether Relevant cards are still in the game
    state::Vector{card}
end


mutable struct game_state
    card_low::Vector{card} #1-32
    card_med::Vector{card} #33-64
    card_high::Vector{card} #65-96
    nobles::Vector{noble} # 5 nobles  97-102, 103-108, 109-114, 115-120, 101-126
    card_low_left::Int8 #127
    card_med_left::Int8 #128
    card_high_left::Int8 #129
    
    gold_coin::Int8 #130
    green_coin::Int8 #131
    red_coin::Int8 #132
    blue_coin::Int8 #133
    white_coin::Int8 #134
    black_coin::Int8 #135
end


function states_to_vector(main_player::player_state, game::game_state )
    println("Hallo")
    
    #return 
end

#function list_actions(state::Vector{Int})
