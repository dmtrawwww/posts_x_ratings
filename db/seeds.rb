# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# data for insertion
logins = [
	"john",
	"john2",
	"john-a",
	"john-xxx",
	"john42",
	"john0000",
	"john777",
	"john666",
	"bob",
	"bob2",
	"bobbobbob",
	"bob-z",
	"bob-a",
	"bob-b",
	"bob-f",
	"bob11",
	"bob101",
	"jack",
	"jackk",
	"jackqq",
	"jack0",
	"jack2",
	"jack777",
	"jack666",
	"jack-b",
	"jack-ab",
	"rick",
	"rick2",
	"rick3",
	"rick4",
	"rick-x",
	"rickxuz",
	"rickxyz",
	"ivan",
	"ivan2",
	"ivanb",
	"ivana",
	"ivan-a",
	"ivan-bk",
	"ivan-b-b",
	"ivan-xxx",
	"ivanxyz",
	"anna",
	"anna2",
	"annajk",
	"annaui97",
	"anna85",
	"anna-g",
	"anna-t-w",
	"annagzz",
	"natasha",
	"natasha2",
	"natasha-natasha",
	"natashaaa",
	"natasha777",
	"nataaasha",
	"natasha-b",
	"sasha",
	"sasha2",
	"sasha666",
	"sasha69",
	"sasha1",
	"sasha101",
	"sasha-o-w",
	"sasha-gq",
	"sam",
	"sam3",
	"sam5",
	"sam8",
	"sam6298",
	"sam611",
	"sam77898",
	"sam1",
	"marshall",
	"marshall2",
	"marshall70",
	"marshall777",
	"marshall10000",
	"marshall3000",
	"marshall-as",
	"marshall-b0f",
	"marshall-i",
	"steve",
	"steve3",
	"steve606",
	"steve999",
	"steve1",
	"steve-3000",
	"steve-9000000",
	"steve-777",
	"steve666",
	"bill",
	"billjohnson",
	"bill_rollinz",
	"bill_bobs",
	"bill11",
	"bill-we",
	"bill-joe",
	"bill-great",
	"billultra"
]
ips = [
	"1.223.55.77", 
	"1.223.55.78", 
	"1.223.55.79", 
	"1.223.55.80", 
	"1.223.55.81", 
	"1.223.55.82", 
	"1.223.55.83", 
	"1.223.55.84", 
	"1.223.55.85", 
	"1.223.55.86", 
	"70.55.21.1", 
	"70.55.21.2", 
	"70.55.21.3", 
	"70.55.21.4", 
	"70.55.21.5", 
	"70.55.21.6", 
	"70.55.21.7", 
	"70.55.21.8", 
	"70.55.21.9", 
	"70.55.21.10", 
	"140.12.111.1", 
	"140.12.111.2", 
	"140.12.111.3", 
	"140.12.111.4", 
	"140.12.111.5", 
	"140.12.111.6", 
	"140.12.111.7", 
	"140.12.111.8", 
	"140.12.111.9", 
	"140.12.111.10", 
	"180.55.23.4", 
	"180.55.23.5", 
	"180.55.23.6", 
	"180.55.23.7", 
	"180.55.23.8", 
	"180.55.23.9", 
	"180.55.23.10", 
	"180.55.23.11", 
	"180.55.23.12", 
	"180.55.23.13", 
	"55.70.20.1", 
	"55.70.20.2", 
	"55.70.20.3", 
	"55.70.20.4", 
	"55.70.20.5", 
	"55.70.20.6", 
	"55.70.20.7", 
	"55.70.20.8", 
	"55.70.20.9", 
	"55.70.20.10"
]
titles = [
	"Mick Jenkins Releases \"Understood,\" Announces 'Pieces of a Man' Album Release Date",
	"Stream Shy Glizzy's 'Fully Loaded' Album f/ Young Thug, Lil Uzi Vert, and More",
	"adidas and Foot Locker Europe Combine for the NMD 'Printed Series' Inspired by London and NYC",
	"Belly Drops Star-Studded Sophomore Album 'IMMIGRANT'",
	"Ella Mai Shares Self-Titled Album, f/ John Legend, Chris Brown, and More",
	"Ty Dolla Sign and Jeremih Share \"Goin Thru Some Thangz\""
]
contents = [
	'Within the past year, the 27-year-old Chicago artist has released two projects (Or More; The Anxious and Or More; The Frustration) as well as a handful of singles, including "Bruce Banner," "Pirates" with Curci, "What am I to Do," and, most recently, "Elephant in the Room."',
	'Jenkins continued his strong run Thursday, with the release of the hypnotic single "Understood." The track will appear on the rapper\'s Pieces of a Man album, set to drop Oct. 26. Jenkins briefly spoke about the project during an August interview with Zane Lowe. He revealed it would include "big collaborators on production and on the feature side."',
	'While we wait for Pieces of a Man to hit streaming services, you can listen to "Understood" now on Apple Music/iTunes or via Spotify below. The new song also has a slice of life-style video, which you can watch above.',
	'The much-anticipated project finally arrived Thursday night, delivering 19 records with guest appearances by Young Thug, Lil Uzi Vert, Rick Ross, Tory Lanez, Gunna, Smokepurpp, Quando Rondo, YoungBoy Never Broke Again, and more. Jefe confirmed Fully Loaded—which he has called "an instant classic"—in September, as he was still riding the success of his 2017 mixtape Quiet Storm. ',
	'You can stream Shy\'s debut studio album now on Apple Music and via Spotify below. The project arrives about three months after the Grammy-nominated rapper signed with ICM Partners.',
	'"Shy Glizzy is a rising talent who continues to impress with each successive release," ICM agent Mari Davies said in a press release. "We\'re proud to welcome him back to ICM and look forward to continued success in the touring space, as we also look to secure him additional opportunities agency-wide."'
]
post_ids = []
n = 1

logins.each do |login|
	# 10.times do 
	# 100.times do 
	2000.times do 
		post_params = {
			title: "#{titles.shuffle.first} - #{n}",
			content: "#{n} - #{contents.shuffle.first}",
			ip: ips.shuffle.first
		}
		n += 1

		# create the user if necessary and then create the post 
		user = User.find_or_create_by(login: login)
		post_params[:user_id] = user.id

		@post = Post.create!(post_params)

		# maybe rate this post 1 time or several times
		[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
			0, 0, 0, 0, 0, 0, 0, 1, 1, 
			1, 3, 3, 7, 7, 9, 9, 12, 20].shuffle.first.times do 

			rating_params = {
				rating: (1..5).to_a.shuffle.first,
				post_id: @post.id
			}

			rating = Rating.create(rating_params)

		end

	end
end