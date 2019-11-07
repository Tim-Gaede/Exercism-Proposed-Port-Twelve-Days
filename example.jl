function recite(verse_start::Int, verse_end::Int)
    ordinals = ["first", "second", "third", "fourth",
                "fifth", "sixth", "seventh", "eighth",
                "ninth", "tenth", "eleventh", "twelfth"]

    gifts = [" a Partridge in a Pear Tree.",
             " two Turtle Doves",
             " three French Hens",
             " four Calling Birds",
             " five Gold Rings",
             " six Geese-a-Laying",
             " seven Swans-a-Swimming",
             " eight Maids-a-Milking",
             " nine Ladies Dancing",
             " ten Lords-a-Leaping",
             " eleven Pipers Piping",
             " twelve Drummers Drumming"]

    res = String[] # result

    for v = verse_start : verse_end
        push!(res, verse(ordinals, gifts, v))
    end


    res
end




function verse(ordinals, gifts, N)

    res = "On the " * ordinals[N] * " day of Christmas my true love gave to me:"

    for n = N : -1 : 2;    res *= gifts[n] * ",";    end

    if N > 1;    res *= " and";    end

    res *= gifts[1]

    res
end
