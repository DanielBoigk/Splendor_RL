using Shuffle
include("read_cards.jl")

Card_list = read_cards()
Noble_list = read_nobles()
# This file is supposed to generate valid games from which on can later produce valid states for Q-learning

#=  green_cost::Int8
    red_cost::Int8
    blue_cost::Int8
    white_cost::Int8
    black_cost::Int8=#


# Basic Struct that saves current state of a game
mutable struct game
    win_cond::Bool #Maybe unnecessary
    players::Int8
    turn::Int8 #Calc (modulo 2/3/4) + 1 to know which player
    
    game_coins::Vector{Int8} #Saves amount of coins in the game
    player_coins::Array{Int8} #Saves how many coins a player has
    player_points::Array{Int8} #Saves amount of winnig points of each player
    player_PP::Array{Int8} #Saves Purchasing Power of Player
    
    card_low_list::Array{Int8}
    card_med_list::Array{Int8}
    card_high_list::Array{Int8}
    
    noble_list::Array{Int8}
    

#=    function game(player::Int64)
        turn = 0
        if player == 2
            game_coins = [4,4,4,4,4,5]
        elseif player == 3
            game_coins = [5,5,5,5,5,5]
        else     
            player = 4
            game_coins = [7,7,7,7,7,5]
        end
        player_coins = zeros(Int8, player, 6)
        player_points = zeros(Int8,player)
        player_PP = zeros(Int8,player,5)
        
        cll = Card_list[1:40,:]
        cml = Card_list[41:70,:]
        chl = Card_list[71:90,:]
        
        cll = cll[shuffle(1:end), :]
        cml = cml[shuffle(1:end), :]
        chl = chl[shuffle(1:end), :]
        
        #Arrays that remember where cards are and whether theyre hidden:
        cll = [cll zeros(Int8,40,1) -ones(Int8, 40,1)] 
        cml = [cml zeros(Int8,30,1) -ones(Int8, 30,1)]
        chl = [chl zeros(Int8,20,1) -ones(Int8, 20,1)]

        cll[1:4,9] = [1,1,1,1]
        cll[1:4,10] = [0,0,0,0]
        cml[1:4,9] = [1,1,1,1]
        cml[1:4,10] = [0,0,0,0]
        chl[1:4,9] = [1,1,1,1]
        chl[1:4,10] = [0,0,0,0]
        
        noble = (Noble_list[shuffle(1:end), :])[1:player+1,:]
            
        
        new(false, player, turn, game_coins,player_coins, player_points, player_PP, 
            cll, cml, chl, noble)
end     =# 
end

new_game(int::64)
function game(player::Int64)
            turn = 0
            if player == 2
                game_coins = [4,4,4,4,4,5]
            elseif player == 3
                game_coins = [5,5,5,5,5,5]
            else     
                player = 4
                game_coins = [7,7,7,7,7,5]
            end
            player_coins = zeros(Int8, player, 6)
            player_points = zeros(Int8,player)
            player_PP = zeros(Int8,player,5)

            cll = Card_list[1:40,:]
            cml = Card_list[41:70,:]
            chl = Card_list[71:90,:]

            cll = cll[shuffle(1:end), :]
            cml = cml[shuffle(1:end), :]
            chl = chl[shuffle(1:end), :]

            #Arrays that remember where cards are and whether theyre hidden:
            cll = [cll zeros(Int8,40,1) -ones(Int8, 40,1)] 
            cml = [cml zeros(Int8,30,1) -ones(Int8, 30,1)]
            chl = [chl zeros(Int8,20,1) -ones(Int8, 20,1)]

            cll[1:4,9] = [1,1,1,1]
            cll[1:4,10] = [0,0,0,0]
            cml[1:4,9] = [1,1,1,1]
            cml[1:4,10] = [0,0,0,0]
            chl[1:4,9] = [1,1,1,1]
            chl[1:4,10] = [0,0,0,0]

            noble = (Noble_list[shuffle(1:end), :])[1:player+1,:]
            return game(false, player, turn, game_coins,player_coins, player_points,player_PP, 
            cll, cml, chl, noble)
end  


function alt_game_action() # Changes game based on action
    println("not implemented")
    
end


function gen_player_state() #Gives a gamestate for the player to evaluate
    
    println("Hello you")
end

function generate_game()
    println("Hello")
    
    
end


