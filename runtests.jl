using Test

include("twelve_days.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.2.0
println("\n"^2, "-"^60, "\n"^3)


@testset "First day a partridge in a pear tree" begin
    expected = [
        "On the first day of Christmas my true love gave to me: " *
        "a Partridge in a Pear Tree."
    ]
    @test recite(1, 1) == expected
end
println()

@testset "Second day two turtle doves" begin
    expected = [
        "On the second day of Christmas my true love gave to me: " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(2, 2) == expected
end
println()

@testset "Third day three french hens" begin
    expected = [
        "On the third day of Christmas my true love gave to me: " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(3, 3) == expected
end
println()

@testset "Fourth day four calling birds" begin
    expected = [
        "On the fourth day of Christmas my true love gave to me: " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(4, 4) == expected
end
println()

@testset "Fifth day five gold rings" begin
    expected = [
        "On the fifth day of Christmas my true love gave to me: " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(5, 5) == expected
end
println()

@testset "Sixth day six geese a laying" begin
    expected = [
        "On the sixth day of Christmas my true love gave to me: " *
        "six Geese-a-Laying, " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(6, 6) == expected
end
println()

@testset "Seventh day seven swans a swimming" begin
    expected = [
        "On the seventh day of Christmas my true love gave to me: " *
        "seven Swans-a-Swimming, " *
        "six Geese-a-Laying, " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(7, 7) == expected
end
println()

@testset "Eighth day eight maids a milking" begin
    expected = [
        "On the eighth day of Christmas my true love gave to me: " *
        "eight Maids-a-Milking, " *
        "seven Swans-a-Swimming, " *
        "six Geese-a-Laying, " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(8, 8) == expected
end
println()

@testset "Ninth day nine ladies dancing" begin
    expected = [
        "On the ninth day of Christmas my true love gave to me: " *
        "nine Ladies Dancing, " *
        "eight Maids-a-Milking, " *
        "seven Swans-a-Swimming, " *
        "six Geese-a-Laying, " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(9, 9) == expected
end
println()

@testset "Tenth day ten lords a leaping" begin
    expected = [
        "On the tenth day of Christmas my true love gave to me: " *
        "ten Lords-a-Leaping, " *
        "nine Ladies Dancing, " *
        "eight Maids-a-Milking, " *
        "seven Swans-a-Swimming, " *
        "six Geese-a-Laying, " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(10, 10) == expected
end
println()

@testset "Eleventh day eleven pipers piping" begin
    expected = [
        "On the eleventh day of Christmas my true love gave to me: " *
        "eleven Pipers Piping, " *
        "ten Lords-a-Leaping, " *
        "nine Ladies Dancing, " *
        "eight Maids-a-Milking, " *
        "seven Swans-a-Swimming, " *
        "six Geese-a-Laying, " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(11, 11) == expected
end
println()

@testset "Twelfth day twelve drummers drumming" begin
    expected = [
        "On the twelfth day of Christmas my true love gave to me: " *
        "twelve Drummers Drumming, " *
        "eleven Pipers Piping, " *
        "ten Lords-a-Leaping, " *
        "nine Ladies Dancing, " *
        "eight Maids-a-Milking, " *
        "seven Swans-a-Swimming, " *
        "six Geese-a-Laying, " *
        "five Gold Rings, " *
        "four Calling Birds, " *
        "three French Hens, " *
        "two Turtle Doves, " *
        "and a Partridge in a Pear Tree."
    ]
    @test recite(12, 12) == expected
end
println()

@testset "recites first three verses of the song" begin
    expected = [recite(n, n)[1]    for n = 1 : 3]
    @test recite(1, 3) == expected
end
println()

@testset "recites three verses from the middle of the song" begin
    expected = [recite(n, n)[1]    for n = 4 : 6]
    @test recite(4, 6) == expected
end
println()

@testset "recites the whole song" begin
    expected = [recite(n, n)[1]    for n = 1 : 12]
    @test recite(1, 12) == expected
end
println()
