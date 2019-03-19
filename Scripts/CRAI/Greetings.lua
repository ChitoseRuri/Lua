function getGreetings()
	local hour = tonumber(os.date("%H"));
	local str_T;
	local str_Greeting = "How nice to see you!";
	-- math.randomseed(os.time());
	if hour < 6 then
		str_T = "dawn";
	elseif hour < 12 then
		str_T =  "morning";
	elseif hour < 14 then
		str_T = "midday";
		
		str_Greeting = "Have you eaten lunch? Take care.";
	elseif hour < 19 then
		str_T = "afternoon";
	else
		str_T = "night";
		if hour > 23 then
			str_Greeting = "Late at night, be ready to sleep my master."
		end
	end
	return str_T, str_Greeting;
end

function main()
	local time = os.date("%X");
	str_T, str_Greeting = getGreetings();
	print("Good "..str_T.." dear master.");
	print("It's "..time.." now.");
	print(str_Greeting);
end

main();