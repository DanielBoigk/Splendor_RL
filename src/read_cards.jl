using CSV
using DataFrames

function read_cards()
    df = CSV.File("data/cardlist.csv") |> DataFrame
    
    replace!(df.green,missing => 0)
    replace!(df.red,missing => 0)
    replace!(df.blue,missing => 0)
    replace!(df.white,missing => 0)
    replace!(df.black,missing => 0)

    replace!(df.Color,"green" => "1")
    replace!(df.Color,"red" => "2")
    replace!(df.Color,"blue" => "3")
    replace!(df.Color,"white" => "4")
    replace!(df.Color,"black" => "5")

    df.Color = parse.(Int64, df.Color)

    return Matrix{Int8}(df)
end

function read_nobles()
    df2 = CSV.File("data/noblelist.csv") |> DataFrame
    return Matrix{Int8}(df2)
end