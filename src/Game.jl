using CSV
using DataFrames
include("read_cards.jl")
Card_list = read_cards()
# This file is supposed to generate valid games from which on can later produce valid states for Q-learning

#=  green_cost::Int8
    red_cost::Int8
    blue_cost::Int8
    white_cost::Int8
    black_cost::Int8=#

println(typeof(Card_list))

mutable struct game
    players::Int8
    turn::Int8
    
    game_coins::Vector{Int8} #Saves amount of coins in the game
    player_coins::Array{Int8} #Saves how many coins a player has
    player_points::Array{Int8} #Saves
    player_PP::Array{Int8} #Saves Purchasing Power of Player
    
    card_high_list::Array{Int8}
    card_med_list::Array{Int8}
    card_low_list::Array{Int8}
    
    noble_list::Array{Int8}
    
    function game(players::int8)
        if players == 2
            println("not implemented")
            #G.game_coins = 
            #G.player_points = 
        elseif G.players == 3
            println("not implemented")
        else
            println("not implemented")
        end
end



function alt_game_action() # Changes game based on action
    
    
end


function gen_player_state() #Gives a gamestate for the player to evaluate
    
    println("Hello you")
end

function generate_game()
    println("Hello")
    
    
end


