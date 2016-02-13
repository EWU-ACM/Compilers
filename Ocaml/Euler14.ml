let even x = if x mod 2 = 0 then true else false;;

let collatz x = if even x then x/2 else 3*x + 1;;

let range x y = 
	let rec range' list x y =
		if x > y
		then list
		else range' (y :: list) x (y - 1)
	in range' [] x y;;

let collatzSeries x = 
	let rec collatzSeries' list x = match x with
		| 1 -> 1::list
		| _ -> collatzSeries' (x::list) (collatz x)
	in collatzSeries' [] x;;

let solution = List.hd (List.sort (fun x y -> (length y) - (length x)) (List.map collatzSeries range 2 1000000));;
