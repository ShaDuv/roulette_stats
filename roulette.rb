
double = {
    0 => {"color" =>"Green", "column" => nil},
    28 => {"color" => "Black", "column" => 1},
    9 => { "color" => "Red", "column" => 3},
    26 => {"color" => "Black", "column" => 2},
    30 => { "color" => "Red", "column" => 3},
    11 => {"color" => "Black", "column" => 2},
    7 => { "color" => "Red", "column" => 1},
    20 => {"color" => "Black", "column" => 2},
    32 => { "color" => "Red", "column" => 2},
    17 => {"color" => "Black", "column" => 2},
    5 => { "color" => "Red", "column" => 2},
    22  => {"color" => "Black", "column" => 1},
    34 => {"color" => "Red", "column" => 1},
    15 => { "color" => "Black", "column" => 3},
    3 => {"color" => "Red", "column" => 3},
    24 => { "color" => "Black", "column" => 3},
    36 => {"color" => "Red", "column" => 3},
    13 => { "color" => "Black", "column" => 1},
    1 => {"color" => "Red", "column" => 1},
    37 => {"color" => "Green", "column" => nil},
    27 => {"color" => "Red", "column" => 3},
    10 => { "color" => "Black", "column" => 1},
    25 => {"color" => "Red", "column" => 1},
    29 => { "color" => "Black", "column" => 2},
    12 => {"color" => "Red", "column" => 3},
    8 => { "color" => "Black", "column" => 2},
    19 => {"color" => "Red", "column" => 1},
    31 => { "color" => "Black", "column" => 1},
    18 => {"color" => "Red", "column" => 3},
    6 => { "color" => "Black", "column" => 3},
    21 => {"color" => "Red", "column" => 3},
    33 => { "color" => "Black", "column" => 3},
    16 => {"color" => "Red", "column" => 1},
    4 => { "color" => "Black", "column" => 1},
    23 => {"color" => "Red", "column" => 2},
    35 => { "color" => "Black", "column" => 2},
    14 => {"color" => "Red", "column" => 2},
    2 => { "color" => "Black", "column" => 2},
}

p "How many spins would you like to test?"
num = gets.chomp
spins = num.to_i

#track
black_count = 0
red_count = 0

spins.times do 
  rand_num = rand(0..37)
p "#{rand_num}  #{double[rand_num]["color"]}"
  if double[rand_num]["color"] == "Red"
    red_count += 1
  elsif double[rand_num]["color"] == "Black"
    black_count += 1
  end
end
p "___RED OR BLACK___"
p "Out of #{spins} spins #{red_count} of them were red."
p "Out of #{spins} spins #{black_count} of them were black."



