
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
column_1_count = 0
column_2_count = 0
column_3_count = 0
first_12 = 0
second_12 = 0
third_12 = 0
is_odd = 0
is_even = 0

spins.times do 
  rand_num = rand(0..37)
p "#{rand_num}  #{double[rand_num]["color"]}"

  if double[rand_num]["color"] == "Red"
    red_count += 1
  elsif double[rand_num]["color"] == "Black"
    black_count += 1
  end

  if double[rand_num]["column"] == 1
    column_1_count += 1
  elsif double[rand_num]["column"] == 2
    column_2_count += 1
  else double[rand_num]["column"] == 2
    column_3_count +=1
  end

  if rand_num > 0 && rand_num <= 12
    first_12 += 1
  elsif rand_num > 12 && rand_num <= 24
    second_12 += 1
  else rand_num > 24 && rand_num <= 36
    third_12 += 1
  end

  if rand_num.odd?
    is_odd += 1
  else
    is_even +=1
  end

end
p "___RED OR BLACK___"
p "Out of #{spins} spins #{red_count} of them were red."
p "Out of #{spins} spins #{black_count} of them were black."
p "___COLUMNS___"
p "Out of #{spins} spins #{column_1_count} of them were in First/Left Column that starts with #1."
p "Out of #{spins} spins #{column_2_count} of them were in Second/Center Column that starts with #2."
p "Out of #{spins} spins #{column_3_count} of them were in Third/Left Column that starts with #3."
p "___The 12's___"
p "Out of #{spins} spins #{first_12} of them were in First 12."
p "Out of #{spins} spins #{second_12} of them were in Second 12."
p "Out of #{spins} spins #{third_12} of them were in Third 12."
p "___EVEN OR ODD___"
p "Out of #{spins} spins #{is_even} of them were even."
p "Out of #{spins} spins #{is_odd} of them were odd."
