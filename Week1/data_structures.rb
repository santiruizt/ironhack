# hash = {:wat => ["fisrt", "subhash" => {:wut => ["one", ["twocero", [["cero" => 0, 1, 2, 3, 4, 5, 6 , 7, 8, 9 => {:bbq => "nipu1", :bbk => "nipu2"}, "uno"], "twoceroone", "twocerotwo"], "twothree"], "three"], :wet => "nidea"}], :wit => 10}





hash = {

	wat: [{},{},{
		wut: [[],[
			[0, 1, 2, 3, 4, 5, 6, 7, 8, {
				bbq: "Barbacoa"

				} ]

			]]

		}]

}

puts hash[:wat][2][:wut][1][0][9][:bbq]





arr = [
		[0, 1, 2, 3, 4, {
				secret: {
					unlock: [0, 1]
				}


			}]

]

puts arr[0][5][:secret][:unlock][1]