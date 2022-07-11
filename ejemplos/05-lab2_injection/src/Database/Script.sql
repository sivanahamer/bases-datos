/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

use Lab2;
delete from Players;
delete from Teams;

insert into Teams
  (Id, name)
select *
from openjson('[
  {
    "Id": "1",
    "Name": "New Jersey Devils"
  },
  {
    "Id": "2",
    "Name": "New York Islanders"
  },
  {
    "Id": "3",
    "Name": "New York Rangers"
  },
  {
    "Id": "4",
    "Name": "Philadelphia Flyers"
  },
  {
    "Id": "5",
    "Name": "Pittsburgh Penguins"
  },
  {
    "Id": "6",
    "Name": "Boston Bruins"
  },
  {
    "Id": "7",
    "Name": "Buffalo Sabres"
  },
  {
    "Id": "8",
    "Name": "Montr\u00E9al Canadiens"
  },
  {
    "Id": "9",
    "Name": "Ottawa Senators"
  },
  {
    "Id": "10",
    "Name": "Toronto Maple Leafs"
  },
  {
    "Id": "12",
    "Name": "Carolina Hurricanes"
  },
  {
    "Id": "13",
    "Name": "Florida Panthers"
  },
  {
    "Id": "14",
    "Name": "Tampa Bay Lightning"
  },
  {
    "Id": "15",
    "Name": "Washington Capitals"
  },
  {
    "Id": "16",
    "Name": "Chicago Blackhawks"
  },
  {
    "Id": "17",
    "Name": "Detroit Red Wings"
  },
  {
    "Id": "18",
    "Name": "Nashville Predators"
  },
  {
    "Id": "19",
    "Name": "St. Louis Blues"
  },
  {
    "Id": "20",
    "Name": "Calgary Flames"
  },
  {
    "Id": "21",
    "Name": "Colorado Avalanche"
  },
  {
    "Id": "22",
    "Name": "Edmonton Oilers"
  },
  {
    "Id": "23",
    "Name": "Vancouver Canucks"
  },
  {
    "Id": "24",
    "Name": "Anaheim Ducks"
  },
  {
    "Id": "25",
    "Name": "Dallas Stars"
  },
  {
    "Id": "26",
    "Name": "Los Angeles Kings"
  },
  {
    "Id": "28",
    "Name": "San Jose Sharks"
  },
  {
    "Id": "29",
    "Name": "Columbus Blue Jackets"
  },
  {
    "Id": "30",
    "Name": "Minnesota Wild"
  },
  {
    "Id": "52",
    "Name": "Winnipeg Jets"
  },
  {
    "Id": "53",
    "Name": "Arizona Coyotes"
  },
  {
    "Id": "54",
    "Name": "Vegas Golden Knights"
  }
]') with (Id nvarchar(450), Name nvarchar(max))

insert
into Players
  (name, JerseyNumber, TeamId)
select *
from openjson('[
  {
    "Name": "Josh Jacobs",
    "JerseyNumber": 40,
    "TeamId": 1
  },
  {
    "Name": "P.K. Subban",
    "JerseyNumber": 76,
    "TeamId": 1
  },
  {
    "Name": "Scott Wedgewood",
    "JerseyNumber": 41,
    "TeamId": 1
  },
  {
    "Name": "Ryan Murray",
    "JerseyNumber": 22,
    "TeamId": 1
  },
  {
    "Name": "Damon Severson",
    "JerseyNumber": 28,
    "TeamId": 1
  },
  {
    "Name": "Aaron Dell",
    "JerseyNumber": 47,
    "TeamId": 1
  },
  {
    "Name": "Andreas Johnsson",
    "JerseyNumber": 11,
    "TeamId": 1
  },
  {
    "Name": "Will Butcher",
    "JerseyNumber": 8,
    "TeamId": 1
  },
  {
    "Name": "Miles Wood",
    "JerseyNumber": 44,
    "TeamId": 1
  },
  {
    "Name": "Jonas Siegenthaler",
    "JerseyNumber": 71,
    "TeamId": 1
  },
  {
    "Name": "Pavel Zacha",
    "JerseyNumber": 37,
    "TeamId": 1
  },
  {
    "Name": "Mackenzie Blackwood",
    "JerseyNumber": 29,
    "TeamId": 1
  },
  {
    "Name": "Nicholas Merkley",
    "JerseyNumber": 39,
    "TeamId": 1
  },
  {
    "Name": "Jesper Bratt",
    "JerseyNumber": 63,
    "TeamId": 1
  },
  {
    "Name": "Nathan Bastian",
    "JerseyNumber": 14,
    "TeamId": 1
  },
  {
    "Name": "Michael McLeod",
    "JerseyNumber": 20,
    "TeamId": 1
  },
  {
    "Name": "Janne Kuokkanen",
    "JerseyNumber": 59,
    "TeamId": 1
  },
  {
    "Name": "Mikhail Maltsev",
    "JerseyNumber": 23,
    "TeamId": 1
  },
  {
    "Name": "Nico Hischier",
    "JerseyNumber": 13,
    "TeamId": 1
  },
  {
    "Name": "Jesper Boqvist",
    "JerseyNumber": 90,
    "TeamId": 1
  },
  {
    "Name": "Ty Smith",
    "JerseyNumber": 24,
    "TeamId": 1
  },
  {
    "Name": "Yegor Sharangovich",
    "JerseyNumber": 17,
    "TeamId": 1
  },
  {
    "Name": "Jack Hughes",
    "JerseyNumber": 86,
    "TeamId": 1
  },
  {
    "Name": "Anders Lee",
    "JerseyNumber": 27,
    "TeamId": 2
  },
  {
    "Name": "Johnny Boychuk",
    "JerseyNumber": 55,
    "TeamId": 2
  },
  {
    "Name": "Andrew Ladd",
    "JerseyNumber": 16,
    "TeamId": 2
  },
  {
    "Name": "Thomas Hickey",
    "JerseyNumber": 34,
    "TeamId": 2
  },
  {
    "Name": "Austin Czarnik",
    "JerseyNumber": 11,
    "TeamId": 2
  },
  {
    "Name": "Kieffer Bellows",
    "JerseyNumber": 20,
    "TeamId": 2
  },
  {
    "Name": "Braydon Coburn",
    "JerseyNumber": 45,
    "TeamId": 2
  },
  {
    "Name": "Travis Zajac",
    "JerseyNumber": 14,
    "TeamId": 2
  },
  {
    "Name": "Cory Schneider",
    "JerseyNumber": 35,
    "TeamId": 2
  },
  {
    "Name": "Andy Greene",
    "JerseyNumber": 4,
    "TeamId": 2
  },
  {
    "Name": "Leo Komarov",
    "JerseyNumber": 47,
    "TeamId": 2
  },
  {
    "Name": "Cal Clutterbuck",
    "JerseyNumber": 15,
    "TeamId": 2
  },
  {
    "Name": "Semyon Varlamov",
    "JerseyNumber": 40,
    "TeamId": 2
  },
  {
    "Name": "Josh Bailey",
    "JerseyNumber": 12,
    "TeamId": 2
  },
  {
    "Name": "Jordan Eberle",
    "JerseyNumber": 7,
    "TeamId": 2
  },
  {
    "Name": "Matt Martin",
    "JerseyNumber": 17,
    "TeamId": 2
  },
  {
    "Name": "Kyle Palmieri",
    "JerseyNumber": 21,
    "TeamId": 2
  },
  {
    "Name": "Nick Leddy",
    "JerseyNumber": 2,
    "TeamId": 2
  },
  {
    "Name": "Casey Cizikas",
    "JerseyNumber": 53,
    "TeamId": 2
  },
  {
    "Name": "Brock Nelson",
    "JerseyNumber": 29,
    "TeamId": 2
  },
  {
    "Name": "Jean-Gabriel Pageau",
    "JerseyNumber": 44,
    "TeamId": 2
  },
  {
    "Name": "Scott Mayfield",
    "JerseyNumber": 24,
    "TeamId": 2
  },
  {
    "Name": "Adam Pelech",
    "JerseyNumber": 3,
    "TeamId": 2
  },
  {
    "Name": "Ryan Pulock",
    "JerseyNumber": 6,
    "TeamId": 2
  },
  {
    "Name": "Ross Johnston",
    "JerseyNumber": 32,
    "TeamId": 2
  },
  {
    "Name": "Michael Dal Colle",
    "JerseyNumber": 28,
    "TeamId": 2
  },
  {
    "Name": "Ilya Sorokin",
    "JerseyNumber": 30,
    "TeamId": 2
  },
  {
    "Name": "Mathew Barzal",
    "JerseyNumber": 13,
    "TeamId": 2
  },
  {
    "Name": "Anthony Beauvillier",
    "JerseyNumber": 18,
    "TeamId": 2
  },
  {
    "Name": "Sebastian Aho",
    "JerseyNumber": 25,
    "TeamId": 2
  },
  {
    "Name": "Oliver Wahlstrom",
    "JerseyNumber": 26,
    "TeamId": 2
  },
  {
    "Name": "Noah Dobson",
    "JerseyNumber": 8,
    "TeamId": 2
  },
  {
    "Name": "Keith Kinkaid",
    "JerseyNumber": 71,
    "TeamId": 3
  },
  {
    "Name": "Brendan Smith",
    "JerseyNumber": 42,
    "TeamId": 3
  },
  {
    "Name": "Chris Kreider",
    "JerseyNumber": 20,
    "TeamId": 3
  },
  {
    "Name": "Anthony Bitetto",
    "JerseyNumber": 22,
    "TeamId": 3
  },
  {
    "Name": "Colin Blackwell",
    "JerseyNumber": 43,
    "TeamId": 3
  },
  {
    "Name": "Ryan Strome",
    "JerseyNumber": 16,
    "TeamId": 3
  },
  {
    "Name": "Mika Zibanejad",
    "JerseyNumber": 93,
    "TeamId": 3
  },
  {
    "Name": "Phillip Di Giuseppe",
    "JerseyNumber": 33,
    "TeamId": 3
  },
  {
    "Name": "Jacob Trouba",
    "JerseyNumber": 8,
    "TeamId": 3
  },
  {
    "Name": "Pavel Buchnevich",
    "JerseyNumber": 89,
    "TeamId": 3
  },
  {
    "Name": "Igor Shesterkin",
    "JerseyNumber": 31,
    "TeamId": 3
  },
  {
    "Name": "Artemi Panarin",
    "JerseyNumber": 10,
    "TeamId": 3
  },
  {
    "Name": "Kevin Rooney",
    "JerseyNumber": 17,
    "TeamId": 3
  },
  {
    "Name": "Adam Fox",
    "JerseyNumber": 23,
    "TeamId": 3
  },
  {
    "Name": "Ryan Lindgren",
    "JerseyNumber": 55,
    "TeamId": 3
  },
  {
    "Name": "Julien Gauthier",
    "JerseyNumber": 12,
    "TeamId": 3
  },
  {
    "Name": "Libor Hajek",
    "JerseyNumber": 25,
    "TeamId": 3
  },
  {
    "Name": "Brett Howden",
    "JerseyNumber": 21,
    "TeamId": 3
  },
  {
    "Name": "Filip Chytil",
    "JerseyNumber": 72,
    "TeamId": 3
  },
  {
    "Name": "Alexandar Georgiev",
    "JerseyNumber": 40,
    "TeamId": 3
  },
  {
    "Name": "K\u0027Andre Miller",
    "JerseyNumber": 79,
    "TeamId": 3
  },
  {
    "Name": "Vitali Kravtsov",
    "JerseyNumber": 74,
    "TeamId": 3
  },
  {
    "Name": "Kaapo Kakko",
    "JerseyNumber": 24,
    "TeamId": 3
  },
  {
    "Name": "Zac Jones",
    "JerseyNumber": 6,
    "TeamId": 3
  },
  {
    "Name": "Alexis Lafreni\u00E8re",
    "JerseyNumber": 13,
    "TeamId": 3
  },
  {
    "Name": "Morgan Frost",
    "JerseyNumber": 48,
    "TeamId": 4
  },
  {
    "Name": "Brian Elliott",
    "JerseyNumber": 37,
    "TeamId": 4
  },
  {
    "Name": "Claude Giroux",
    "JerseyNumber": 28,
    "TeamId": 4
  },
  {
    "Name": "Justin Braun",
    "JerseyNumber": 61,
    "TeamId": 4
  },
  {
    "Name": "James van Riemsdyk",
    "JerseyNumber": 25,
    "TeamId": 4
  },
  {
    "Name": "Jakub Voracek",
    "JerseyNumber": 93,
    "TeamId": 4
  },
  {
    "Name": "Kevin Hayes",
    "JerseyNumber": 13,
    "TeamId": 4
  },
  {
    "Name": "Sean Couturier",
    "JerseyNumber": 14,
    "TeamId": 4
  },
  {
    "Name": "Scott Laughton",
    "JerseyNumber": 21,
    "TeamId": 4
  },
  {
    "Name": "Shayne Gostisbehere",
    "JerseyNumber": 53,
    "TeamId": 4
  },
  {
    "Name": "Robert Hagg",
    "JerseyNumber": 8,
    "TeamId": 4
  },
  {
    "Name": "Samuel Morin",
    "JerseyNumber": 55,
    "TeamId": 4
  },
  {
    "Name": "Travis Sanheim",
    "JerseyNumber": 6,
    "TeamId": 4
  },
  {
    "Name": "Nicolas Aube-Kubel",
    "JerseyNumber": 62,
    "TeamId": 4
  },
  {
    "Name": "Oskar Lindblom",
    "JerseyNumber": 23,
    "TeamId": 4
  },
  {
    "Name": "Travis Konecny",
    "JerseyNumber": 11,
    "TeamId": 4
  },
  {
    "Name": "Ivan Provorov",
    "JerseyNumber": 9,
    "TeamId": 4
  },
  {
    "Name": "Philippe Myers",
    "JerseyNumber": 5,
    "TeamId": 4
  },
  {
    "Name": "Alex Lyon",
    "JerseyNumber": 34,
    "TeamId": 4
  },
  {
    "Name": "Wade Allison",
    "JerseyNumber": 57,
    "TeamId": 4
  },
  {
    "Name": "Carter Hart",
    "JerseyNumber": 79,
    "TeamId": 4
  },
  {
    "Name": "Tanner Laczynski",
    "JerseyNumber": 58,
    "TeamId": 4
  },
  {
    "Name": "Nolan Patrick",
    "JerseyNumber": 19,
    "TeamId": 4
  },
  {
    "Name": "Joel Farabee",
    "JerseyNumber": 86,
    "TeamId": 4
  },
  {
    "Name": "Evgeni Malkin",
    "JerseyNumber": 71,
    "TeamId": 5
  },
  {
    "Name": "Kasperi Kapanen",
    "JerseyNumber": 42,
    "TeamId": 5
  },
  {
    "Name": "Mark Friedman",
    "JerseyNumber": 52,
    "TeamId": 5
  },
  {
    "Name": "Brandon Tanev",
    "JerseyNumber": 13,
    "TeamId": 5
  },
  {
    "Name": "Yannick Weber",
    "JerseyNumber": 3,
    "TeamId": 5
  },
  {
    "Name": "Anthony Angello",
    "JerseyNumber": 57,
    "TeamId": 5
  },
  {
    "Name": "Jordy Bellerive",
    "JerseyNumber": 64,
    "TeamId": 5
  },
  {
    "Name": "Jonathan Gruden",
    "JerseyNumber": 45,
    "TeamId": 5
  },
  {
    "Name": "Juuso Riikola",
    "JerseyNumber": 50,
    "TeamId": 5
  },
  {
    "Name": "Emil Larmi",
    "JerseyNumber": 60,
    "TeamId": 5
  },
  {
    "Name": "Drew O\u0027Connor",
    "JerseyNumber": 10,
    "TeamId": 5
  },
  {
    "Name": "Jeff Carter",
    "JerseyNumber": 77,
    "TeamId": 5
  },
  {
    "Name": "Sidney Crosby",
    "JerseyNumber": 87,
    "TeamId": 5
  },
  {
    "Name": "Kris Letang",
    "JerseyNumber": 58,
    "TeamId": 5
  },
  {
    "Name": "Colton Sceviour",
    "JerseyNumber": 7,
    "TeamId": 5
  },
  {
    "Name": "Brian Dumoulin",
    "JerseyNumber": 8,
    "TeamId": 5
  },
  {
    "Name": "Jason Zucker",
    "JerseyNumber": 16,
    "TeamId": 5
  },
  {
    "Name": "Bryan Rust",
    "JerseyNumber": 17,
    "TeamId": 5
  },
  {
    "Name": "Mark Jankowski",
    "JerseyNumber": 14,
    "TeamId": 5
  },
  {
    "Name": "Mike Matheson",
    "JerseyNumber": 5,
    "TeamId": 5
  },
  {
    "Name": "Cody Ceci",
    "JerseyNumber": 4,
    "TeamId": 5
  },
  {
    "Name": "Teddy Blueger",
    "JerseyNumber": 53,
    "TeamId": 5
  },
  {
    "Name": "Chad Ruhwedel",
    "JerseyNumber": 2,
    "TeamId": 5
  },
  {
    "Name": "Jake Guentzel",
    "JerseyNumber": 59,
    "TeamId": 5
  },
  {
    "Name": "Tristan Jarry",
    "JerseyNumber": 35,
    "TeamId": 5
  },
  {
    "Name": "Frederick Gaudreau",
    "JerseyNumber": 11,
    "TeamId": 5
  },
  {
    "Name": "Jared McCann",
    "JerseyNumber": 19,
    "TeamId": 5
  },
  {
    "Name": "Marcus Pettersson",
    "JerseyNumber": 28,
    "TeamId": 5
  },
  {
    "Name": "Sam Lafferty",
    "JerseyNumber": 18,
    "TeamId": 5
  },
  {
    "Name": "John Marino",
    "JerseyNumber": 6,
    "TeamId": 5
  },
  {
    "Name": "Evan Rodrigues",
    "JerseyNumber": 9,
    "TeamId": 5
  },
  {
    "Name": "Casey DeSmith",
    "JerseyNumber": 1,
    "TeamId": 5
  },
  {
    "Name": "Zach Aston-Reese",
    "JerseyNumber": 12,
    "TeamId": 5
  },
  {
    "Name": "Radim Zohorna",
    "JerseyNumber": 67,
    "TeamId": 5
  },
  {
    "Name": "John Moore",
    "JerseyNumber": 27,
    "TeamId": 6
  },
  {
    "Name": "Ondrej Kase",
    "JerseyNumber": 28,
    "TeamId": 6
  },
  {
    "Name": "Brandon Carlo",
    "JerseyNumber": 25,
    "TeamId": 6
  },
  {
    "Name": "Patrice Bergeron",
    "JerseyNumber": 37,
    "TeamId": 6
  },
  {
    "Name": "David Krejci",
    "JerseyNumber": 46,
    "TeamId": 6
  },
  {
    "Name": "Tuukka Rask",
    "JerseyNumber": 40,
    "TeamId": 6
  },
  {
    "Name": "Brad Marchand",
    "JerseyNumber": 63,
    "TeamId": 6
  },
  {
    "Name": "Craig Smith",
    "JerseyNumber": 12,
    "TeamId": 6
  },
  {
    "Name": "Charlie Coyle",
    "JerseyNumber": 13,
    "TeamId": 6
  },
  {
    "Name": "Chris Wagner",
    "JerseyNumber": 14,
    "TeamId": 6
  },
  {
    "Name": "Taylor Hall",
    "JerseyNumber": 71,
    "TeamId": 6
  },
  {
    "Name": "Jarred Tinordi",
    "JerseyNumber": 84,
    "TeamId": 6
  },
  {
    "Name": "Kevan Miller",
    "JerseyNumber": 86,
    "TeamId": 6
  },
  {
    "Name": "Sean Kuraly",
    "JerseyNumber": 52,
    "TeamId": 6
  },
  {
    "Name": "Mike Reilly",
    "JerseyNumber": 6,
    "TeamId": 6
  },
  {
    "Name": "Matt Grzelcyk",
    "JerseyNumber": 48,
    "TeamId": 6
  },
  {
    "Name": "Anton Blidh",
    "JerseyNumber": 81,
    "TeamId": 6
  },
  {
    "Name": "Connor Clifton",
    "JerseyNumber": 75,
    "TeamId": 6
  },
  {
    "Name": "Curtis Lazar",
    "JerseyNumber": 20,
    "TeamId": 6
  },
  {
    "Name": "Nick Ritchie",
    "JerseyNumber": 21,
    "TeamId": 6
  },
  {
    "Name": "David Pastrnak",
    "JerseyNumber": 88,
    "TeamId": 6
  },
  {
    "Name": "Jakub Zboril",
    "JerseyNumber": 67,
    "TeamId": 6
  },
  {
    "Name": "Dan Vladar",
    "JerseyNumber": 80,
    "TeamId": 6
  },
  {
    "Name": "Jeremy Lauzon",
    "JerseyNumber": 55,
    "TeamId": 6
  },
  {
    "Name": "Jake DeBrusk",
    "JerseyNumber": 74,
    "TeamId": 6
  },
  {
    "Name": "Charlie McAvoy",
    "JerseyNumber": 73,
    "TeamId": 6
  },
  {
    "Name": "Jeremy Swayman",
    "JerseyNumber": 1,
    "TeamId": 6
  },
  {
    "Name": "Karson Kuhlman",
    "JerseyNumber": 83,
    "TeamId": 6
  },
  {
    "Name": "Zemgus Girgensons",
    "JerseyNumber": 28,
    "TeamId": 7
  },
  {
    "Name": "Jake McCabe",
    "JerseyNumber": 19,
    "TeamId": 7
  },
  {
    "Name": "Jack Eichel",
    "JerseyNumber": 9,
    "TeamId": 7
  },
  {
    "Name": "William Borgen",
    "JerseyNumber": 3,
    "TeamId": 7
  },
  {
    "Name": "Brandon Davidson",
    "JerseyNumber": 88,
    "TeamId": 7
  },
  {
    "Name": "Michael Houser",
    "JerseyNumber": 32,
    "TeamId": 7
  },
  {
    "Name": "Drake Caggiula",
    "JerseyNumber": 91,
    "TeamId": 7
  },
  {
    "Name": "C.J. Smith",
    "JerseyNumber": 49,
    "TeamId": 7
  },
  {
    "Name": "Kyle Okposo",
    "JerseyNumber": 21,
    "TeamId": 7
  },
  {
    "Name": "Dustin Tokarski",
    "JerseyNumber": 31,
    "TeamId": 7
  },
  {
    "Name": "Cody Eakin",
    "JerseyNumber": 20,
    "TeamId": 7
  },
  {
    "Name": "Carter Hutton",
    "JerseyNumber": 40,
    "TeamId": 7
  },
  {
    "Name": "Matt Irwin",
    "JerseyNumber": 44,
    "TeamId": 7
  },
  {
    "Name": "Riley Sheahan",
    "JerseyNumber": 15,
    "TeamId": 7
  },
  {
    "Name": "Jeff Skinner",
    "JerseyNumber": 53,
    "TeamId": 7
  },
  {
    "Name": "Tobias Rieder",
    "JerseyNumber": 13,
    "TeamId": 7
  },
  {
    "Name": "Colin Miller",
    "JerseyNumber": 33,
    "TeamId": 7
  },
  {
    "Name": "Linus Ullmark",
    "JerseyNumber": 35,
    "TeamId": 7
  },
  {
    "Name": "Rasmus Ristolainen",
    "JerseyNumber": 55,
    "TeamId": 7
  },
  {
    "Name": "Sam Reinhart",
    "JerseyNumber": 23,
    "TeamId": 7
  },
  {
    "Name": "Anders Bjork",
    "JerseyNumber": 96,
    "TeamId": 7
  },
  {
    "Name": "Victor Olofsson",
    "JerseyNumber": 68,
    "TeamId": 7
  },
  {
    "Name": "Rasmus Asplund",
    "JerseyNumber": 74,
    "TeamId": 7
  },
  {
    "Name": "Tage Thompson",
    "JerseyNumber": 72,
    "TeamId": 7
  },
  {
    "Name": "Casey Mittelstadt",
    "JerseyNumber": 37,
    "TeamId": 7
  },
  {
    "Name": "Henri Jokiharju",
    "JerseyNumber": 10,
    "TeamId": 7
  },
  {
    "Name": "Jacob Bryson",
    "JerseyNumber": 78,
    "TeamId": 7
  },
  {
    "Name": "Rasmus Dahlin",
    "JerseyNumber": 26,
    "TeamId": 7
  },
  {
    "Name": "Dylan Cozens",
    "JerseyNumber": 24,
    "TeamId": 7
  },
  {
    "Name": "Arttu Ruotsalainen",
    "JerseyNumber": 25,
    "TeamId": 7
  },
  {
    "Name": "Brendan Gallagher",
    "JerseyNumber": 11,
    "TeamId": 8
  },
  {
    "Name": "Michael Frolik",
    "JerseyNumber": 67,
    "TeamId": 8
  },
  {
    "Name": "Xavier Ouellet",
    "JerseyNumber": 61,
    "TeamId": 8
  },
  {
    "Name": "Jake Evans",
    "JerseyNumber": 71,
    "TeamId": 8
  },
  {
    "Name": "Michael McNiven",
    "JerseyNumber": 70,
    "TeamId": 8
  },
  {
    "Name": "Cole Caufield",
    "JerseyNumber": 22,
    "TeamId": 8
  },
  {
    "Name": "Eric Staal",
    "JerseyNumber": 21,
    "TeamId": 8
  },
  {
    "Name": "Corey Perry",
    "JerseyNumber": 94,
    "TeamId": 8
  },
  {
    "Name": "Shea Weber",
    "JerseyNumber": 6,
    "TeamId": 8
  },
  {
    "Name": "Carey Price",
    "JerseyNumber": 31,
    "TeamId": 8
  },
  {
    "Name": "Jeff Petry",
    "JerseyNumber": 26,
    "TeamId": 8
  },
  {
    "Name": "Paul Byron",
    "JerseyNumber": 41,
    "TeamId": 8
  },
  {
    "Name": "Jake Allen",
    "JerseyNumber": 34,
    "TeamId": 8
  },
  {
    "Name": "Tomas Tatar",
    "JerseyNumber": 90,
    "TeamId": 8
  },
  {
    "Name": "Ben Chiarot",
    "JerseyNumber": 8,
    "TeamId": 8
  },
  {
    "Name": "Tyler Toffoli",
    "JerseyNumber": 73,
    "TeamId": 8
  },
  {
    "Name": "Jon Merrill",
    "JerseyNumber": 28,
    "TeamId": 8
  },
  {
    "Name": "Joel Edmundson",
    "JerseyNumber": 44,
    "TeamId": 8
  },
  {
    "Name": "Joel Armia",
    "JerseyNumber": 40,
    "TeamId": 8
  },
  {
    "Name": "Phillip Danault",
    "JerseyNumber": 24,
    "TeamId": 8
  },
  {
    "Name": "Brett Kulak",
    "JerseyNumber": 77,
    "TeamId": 8
  },
  {
    "Name": "Erik Gustafsson",
    "JerseyNumber": 32,
    "TeamId": 8
  },
  {
    "Name": "Josh Anderson",
    "JerseyNumber": 17,
    "TeamId": 8
  },
  {
    "Name": "Artturi Lehkonen",
    "JerseyNumber": 62,
    "TeamId": 8
  },
  {
    "Name": "Jonathan Drouin",
    "JerseyNumber": 92,
    "TeamId": 8
  },
  {
    "Name": "Nick Suzuki",
    "JerseyNumber": 14,
    "TeamId": 8
  },
  {
    "Name": "Cayden Primeau",
    "JerseyNumber": 30,
    "TeamId": 8
  },
  {
    "Name": "Jesperi Kotkaniemi",
    "JerseyNumber": 15,
    "TeamId": 8
  },
  {
    "Name": "Alexander Romanov",
    "JerseyNumber": 27,
    "TeamId": 8
  },
  {
    "Name": "Derek Stepan",
    "JerseyNumber": 21,
    "TeamId": 9
  },
  {
    "Name": "Austin Watson",
    "JerseyNumber": 16,
    "TeamId": 9
  },
  {
    "Name": "Joey Daccord",
    "JerseyNumber": 34,
    "TeamId": 9
  },
  {
    "Name": "Micheal Haley",
    "JerseyNumber": 38,
    "TeamId": 9
  },
  {
    "Name": "Artem Anisimov",
    "JerseyNumber": 51,
    "TeamId": 9
  },
  {
    "Name": "Evgenii Dadonov",
    "JerseyNumber": 63,
    "TeamId": 9
  },
  {
    "Name": "Ryan Dzingel",
    "JerseyNumber": 10,
    "TeamId": 9
  },
  {
    "Name": "Anton Forsberg",
    "JerseyNumber": 31,
    "TeamId": 9
  },
  {
    "Name": "Matt Murray",
    "JerseyNumber": 30,
    "TeamId": 9
  },
  {
    "Name": "Chris Tierney",
    "JerseyNumber": 71,
    "TeamId": 9
  },
  {
    "Name": "Connor Brown",
    "JerseyNumber": 28,
    "TeamId": 9
  },
  {
    "Name": "Josh Brown",
    "JerseyNumber": 3,
    "TeamId": 9
  },
  {
    "Name": "Marcus Hogberg",
    "JerseyNumber": 1,
    "TeamId": 9
  },
  {
    "Name": "Nick Paul",
    "JerseyNumber": 13,
    "TeamId": 9
  },
  {
    "Name": "Michael Amadio",
    "JerseyNumber": 29,
    "TeamId": 9
  },
  {
    "Name": "Colin White",
    "JerseyNumber": 36,
    "TeamId": 9
  },
  {
    "Name": "Thomas Chabot",
    "JerseyNumber": 72,
    "TeamId": 9
  },
  {
    "Name": "Victor Mete",
    "JerseyNumber": 98,
    "TeamId": 9
  },
  {
    "Name": "Nikita Zaitsev",
    "JerseyNumber": 22,
    "TeamId": 9
  },
  {
    "Name": "Josh Norris",
    "JerseyNumber": 9,
    "TeamId": 9
  },
  {
    "Name": "Erik Brannstrom",
    "JerseyNumber": 26,
    "TeamId": 9
  },
  {
    "Name": "Drake Batherson",
    "JerseyNumber": 19,
    "TeamId": 9
  },
  {
    "Name": "Brady Tkachuk",
    "JerseyNumber": 7,
    "TeamId": 9
  },
  {
    "Name": "Jacob Bernard-Docker",
    "JerseyNumber": 48,
    "TeamId": 9
  },
  {
    "Name": "Shane Pinto",
    "JerseyNumber": 57,
    "TeamId": 9
  },
  {
    "Name": "Tim St\u00FCtzle",
    "JerseyNumber": 18,
    "TeamId": 9
  },
  {
    "Name": "Artem Zub",
    "JerseyNumber": 2,
    "TeamId": 9
  },
  {
    "Name": "Riley Nash",
    "JerseyNumber": 20,
    "TeamId": 10
  },
  {
    "Name": "Frederik Andersen",
    "JerseyNumber": 31,
    "TeamId": 10
  },
  {
    "Name": "Rasmus Sandin",
    "JerseyNumber": 38,
    "TeamId": 10
  },
  {
    "Name": "Joe Thornton",
    "JerseyNumber": 97,
    "TeamId": 10
  },
  {
    "Name": "Jason Spezza",
    "JerseyNumber": 19,
    "TeamId": 10
  },
  {
    "Name": "Nick Foligno",
    "JerseyNumber": 71,
    "TeamId": 10
  },
  {
    "Name": "Jake Muzzin",
    "JerseyNumber": 8,
    "TeamId": 10
  },
  {
    "Name": "Wayne Simmonds",
    "JerseyNumber": 24,
    "TeamId": 10
  },
  {
    "Name": "Zach Bogosian",
    "JerseyNumber": 22,
    "TeamId": 10
  },
  {
    "Name": "TJ Brodie",
    "JerseyNumber": 78,
    "TeamId": 10
  },
  {
    "Name": "John Tavares",
    "JerseyNumber": 91,
    "TeamId": 10
  },
  {
    "Name": "Justin Holl",
    "JerseyNumber": 3,
    "TeamId": 10
  },
  {
    "Name": "Zach Hyman",
    "JerseyNumber": 11,
    "TeamId": 10
  },
  {
    "Name": "Jack Campbell",
    "JerseyNumber": 36,
    "TeamId": 10
  },
  {
    "Name": "Alex Galchenyuk",
    "JerseyNumber": 12,
    "TeamId": 10
  },
  {
    "Name": "Morgan Rielly",
    "JerseyNumber": 44,
    "TeamId": 10
  },
  {
    "Name": "Ben Hutton",
    "JerseyNumber": 55,
    "TeamId": 10
  },
  {
    "Name": "Alexander Kerfoot",
    "JerseyNumber": 15,
    "TeamId": 10
  },
  {
    "Name": "Scott Sabourin",
    "JerseyNumber": 49,
    "TeamId": 10
  },
  {
    "Name": "William Nylander",
    "JerseyNumber": 88,
    "TeamId": 10
  },
  {
    "Name": "Pierre Engvall",
    "JerseyNumber": 47,
    "TeamId": 10
  },
  {
    "Name": "Travis Dermott",
    "JerseyNumber": 23,
    "TeamId": 10
  },
  {
    "Name": "Mitchell Marner",
    "JerseyNumber": 16,
    "TeamId": 10
  },
  {
    "Name": "Auston Matthews",
    "JerseyNumber": 34,
    "TeamId": 10
  },
  {
    "Name": "David Rittich",
    "JerseyNumber": 33,
    "TeamId": 10
  },
  {
    "Name": "Nicholas Robertson",
    "JerseyNumber": 89,
    "TeamId": 10
  },
  {
    "Name": "Ilya Mikheyev",
    "JerseyNumber": 65,
    "TeamId": 10
  },
  {
    "Name": "Teuvo Teravainen",
    "JerseyNumber": 86,
    "TeamId": 12
  },
  {
    "Name": "James Reimer",
    "JerseyNumber": 47,
    "TeamId": 12
  },
  {
    "Name": "Jordan Staal",
    "JerseyNumber": 11,
    "TeamId": 12
  },
  {
    "Name": "Jake Gardiner",
    "JerseyNumber": 51,
    "TeamId": 12
  },
  {
    "Name": "Nino Niederreiter",
    "JerseyNumber": 21,
    "TeamId": 12
  },
  {
    "Name": "Jani Hakanpaa",
    "JerseyNumber": 58,
    "TeamId": 12
  },
  {
    "Name": "Petr Mrazek",
    "JerseyNumber": 34,
    "TeamId": 12
  },
  {
    "Name": "Jesper Fast",
    "JerseyNumber": 71,
    "TeamId": 12
  },
  {
    "Name": "Vincent Trocheck",
    "JerseyNumber": 16,
    "TeamId": 12
  },
  {
    "Name": "Dougie Hamilton",
    "JerseyNumber": 19,
    "TeamId": 12
  },
  {
    "Name": "Brady Skjei",
    "JerseyNumber": 76,
    "TeamId": 12
  },
  {
    "Name": "Jordan Martinook",
    "JerseyNumber": 48,
    "TeamId": 12
  },
  {
    "Name": "Brock McGinn",
    "JerseyNumber": 23,
    "TeamId": 12
  },
  {
    "Name": "Jaccob Slavin",
    "JerseyNumber": 74,
    "TeamId": 12
  },
  {
    "Name": "Cedric Paquette",
    "JerseyNumber": 18,
    "TeamId": 12
  },
  {
    "Name": "Brett Pesce",
    "JerseyNumber": 22,
    "TeamId": 12
  },
  {
    "Name": "Alex Nedeljkovic",
    "JerseyNumber": 39,
    "TeamId": 12
  },
  {
    "Name": "Warren Foegele",
    "JerseyNumber": 13,
    "TeamId": 12
  },
  {
    "Name": "Sebastian Aho",
    "JerseyNumber": 20,
    "TeamId": 12
  },
  {
    "Name": "Steven Lorentz",
    "JerseyNumber": 78,
    "TeamId": 12
  },
  {
    "Name": "Jake Bean",
    "JerseyNumber": 24,
    "TeamId": 12
  },
  {
    "Name": "Martin Necas",
    "JerseyNumber": 88,
    "TeamId": 12
  },
  {
    "Name": "Andrei Svechnikov",
    "JerseyNumber": 37,
    "TeamId": 12
  },
  {
    "Name": "Aaron Ekblad",
    "JerseyNumber": 5,
    "TeamId": 13
  },
  {
    "Name": "Kevin Connauton",
    "JerseyNumber": 44,
    "TeamId": 13
  },
  {
    "Name": "Philippe Desrosiers",
    "JerseyNumber": 95,
    "TeamId": 13
  },
  {
    "Name": "Lucas Carlsson",
    "JerseyNumber": 32,
    "TeamId": 13
  },
  {
    "Name": "Aleksi Heponiemi",
    "JerseyNumber": 20,
    "TeamId": 13
  },
  {
    "Name": "Brady Keeper",
    "JerseyNumber": 25,
    "TeamId": 13
  },
  {
    "Name": "Keith Yandle",
    "JerseyNumber": 3,
    "TeamId": 13
  },
  {
    "Name": "Anton Stralman",
    "JerseyNumber": 6,
    "TeamId": 13
  },
  {
    "Name": "Patric Hornqvist",
    "JerseyNumber": 70,
    "TeamId": 13
  },
  {
    "Name": "Radko Gudas",
    "JerseyNumber": 7,
    "TeamId": 13
  },
  {
    "Name": "Sergei Bobrovsky",
    "JerseyNumber": 72,
    "TeamId": 13
  },
  {
    "Name": "Jonathan Huberdeau",
    "JerseyNumber": 11,
    "TeamId": 13
  },
  {
    "Name": "Chris Driedger",
    "JerseyNumber": 60,
    "TeamId": 13
  },
  {
    "Name": "Nikita Gusev",
    "JerseyNumber": 97,
    "TeamId": 13
  },
  {
    "Name": "MacKenzie Weegar",
    "JerseyNumber": 52,
    "TeamId": 13
  },
  {
    "Name": "Anthony Duclair",
    "JerseyNumber": 91,
    "TeamId": 13
  },
  {
    "Name": "Carter Verhaeghe",
    "JerseyNumber": 23,
    "TeamId": 13
  },
  {
    "Name": "Aleksander Barkov",
    "JerseyNumber": 16,
    "TeamId": 13
  },
  {
    "Name": "Alex Wennberg",
    "JerseyNumber": 21,
    "TeamId": 13
  },
  {
    "Name": "Sam Bennett",
    "JerseyNumber": 9,
    "TeamId": 13
  },
  {
    "Name": "Brandon Montour",
    "JerseyNumber": 62,
    "TeamId": 13
  },
  {
    "Name": "Juho Lammikko",
    "JerseyNumber": 83,
    "TeamId": 13
  },
  {
    "Name": "Lucas Wallmark",
    "JerseyNumber": 71,
    "TeamId": 13
  },
  {
    "Name": "Gustav Forsling",
    "JerseyNumber": 42,
    "TeamId": 13
  },
  {
    "Name": "Frank Vatrano",
    "JerseyNumber": 77,
    "TeamId": 13
  },
  {
    "Name": "Noel Acciari",
    "JerseyNumber": 55,
    "TeamId": 13
  },
  {
    "Name": "Markus Nutivaara",
    "JerseyNumber": 65,
    "TeamId": 13
  },
  {
    "Name": "Mason Marchment",
    "JerseyNumber": 19,
    "TeamId": 13
  },
  {
    "Name": "Ryan Lomberg",
    "JerseyNumber": 94,
    "TeamId": 13
  },
  {
    "Name": "Owen Tippett",
    "JerseyNumber": 74,
    "TeamId": 13
  },
  {
    "Name": "Eetu Luostarinen",
    "JerseyNumber": 27,
    "TeamId": 13
  },
  {
    "Name": "Spencer Knight",
    "JerseyNumber": 30,
    "TeamId": 13
  },
  {
    "Name": "Matt Kiersted",
    "JerseyNumber": 8,
    "TeamId": 13
  },
  {
    "Name": "Steven Stamkos",
    "JerseyNumber": 91,
    "TeamId": 14
  },
  {
    "Name": "Jan Rutta",
    "JerseyNumber": 44,
    "TeamId": 14
  },
  {
    "Name": "Fredrik Claesson",
    "JerseyNumber": 3,
    "TeamId": 14
  },
  {
    "Name": "Christopher Gibson",
    "JerseyNumber": 33,
    "TeamId": 14
  },
  {
    "Name": "Ben Thomas",
    "JerseyNumber": 56,
    "TeamId": 14
  },
  {
    "Name": "Daniel Walcott",
    "JerseyNumber": 85,
    "TeamId": 14
  },
  {
    "Name": "Cal Foote",
    "JerseyNumber": 52,
    "TeamId": 14
  },
  {
    "Name": "Curtis McElhinney",
    "JerseyNumber": 35,
    "TeamId": 14
  },
  {
    "Name": "Alex Killorn",
    "JerseyNumber": 17,
    "TeamId": 14
  },
  {
    "Name": "Pat Maroon",
    "JerseyNumber": 14,
    "TeamId": 14
  },
  {
    "Name": "Ryan McDonagh",
    "JerseyNumber": 27,
    "TeamId": 14
  },
  {
    "Name": "Luke Schenn",
    "JerseyNumber": 2,
    "TeamId": 14
  },
  {
    "Name": "Tyler Johnson",
    "JerseyNumber": 9,
    "TeamId": 14
  },
  {
    "Name": "Victor Hedman",
    "JerseyNumber": 77,
    "TeamId": 14
  },
  {
    "Name": "David Savard",
    "JerseyNumber": 58,
    "TeamId": 14
  },
  {
    "Name": "Ondrej Palat",
    "JerseyNumber": 18,
    "TeamId": 14
  },
  {
    "Name": "Blake Coleman",
    "JerseyNumber": 20,
    "TeamId": 14
  },
  {
    "Name": "Barclay Goodrow",
    "JerseyNumber": 19,
    "TeamId": 14
  },
  {
    "Name": "Yanni Gourde",
    "JerseyNumber": 37,
    "TeamId": 14
  },
  {
    "Name": "Andrei Vasilevskiy",
    "JerseyNumber": 88,
    "TeamId": 14
  },
  {
    "Name": "Brayden Point",
    "JerseyNumber": 21,
    "TeamId": 14
  },
  {
    "Name": "Erik Cernak",
    "JerseyNumber": 81,
    "TeamId": 14
  },
  {
    "Name": "Mathieu Joseph",
    "JerseyNumber": 7,
    "TeamId": 14
  },
  {
    "Name": "Mitchell Stephens",
    "JerseyNumber": 67,
    "TeamId": 14
  },
  {
    "Name": "Anthony Cirelli",
    "JerseyNumber": 71,
    "TeamId": 14
  },
  {
    "Name": "Mikhail Sergachev",
    "JerseyNumber": 98,
    "TeamId": 14
  },
  {
    "Name": "Ross Colton",
    "JerseyNumber": 79,
    "TeamId": 14
  },
  {
    "Name": "Alex Barre-Boulet",
    "JerseyNumber": 60,
    "TeamId": 14
  },
  {
    "Name": "Craig Anderson",
    "JerseyNumber": 31,
    "TeamId": 15
  },
  {
    "Name": "Michal Kempny",
    "JerseyNumber": 6,
    "TeamId": 15
  },
  {
    "Name": "Zdeno Chara",
    "JerseyNumber": 33,
    "TeamId": 15
  },
  {
    "Name": "Alex Ovechkin",
    "JerseyNumber": 8,
    "TeamId": 15
  },
  {
    "Name": "T.J. Oshie",
    "JerseyNumber": 77,
    "TeamId": 15
  },
  {
    "Name": "Nicklas Backstrom",
    "JerseyNumber": 19,
    "TeamId": 15
  },
  {
    "Name": "Carl Hagelin",
    "JerseyNumber": 62,
    "TeamId": 15
  },
  {
    "Name": "Lars Eller",
    "JerseyNumber": 20,
    "TeamId": 15
  },
  {
    "Name": "John Carlson",
    "JerseyNumber": 74,
    "TeamId": 15
  },
  {
    "Name": "Justin Schultz",
    "JerseyNumber": 2,
    "TeamId": 15
  },
  {
    "Name": "Dmitry Orlov",
    "JerseyNumber": 9,
    "TeamId": 15
  },
  {
    "Name": "Nick Jensen",
    "JerseyNumber": 3,
    "TeamId": 15
  },
  {
    "Name": "Nic Dowd",
    "JerseyNumber": 26,
    "TeamId": 15
  },
  {
    "Name": "Brenden Dillon",
    "JerseyNumber": 4,
    "TeamId": 15
  },
  {
    "Name": "Evgeny Kuznetsov",
    "JerseyNumber": 92,
    "TeamId": 15
  },
  {
    "Name": "Tom Wilson",
    "JerseyNumber": 43,
    "TeamId": 15
  },
  {
    "Name": "Michael Raffl",
    "JerseyNumber": 17,
    "TeamId": 15
  },
  {
    "Name": "Anthony Mantha",
    "JerseyNumber": 39,
    "TeamId": 15
  },
  {
    "Name": "Conor Sheary",
    "JerseyNumber": 73,
    "TeamId": 15
  },
  {
    "Name": "Trevor van Riemsdyk",
    "JerseyNumber": 57,
    "TeamId": 15
  },
  {
    "Name": "Garnet Hathaway",
    "JerseyNumber": 21,
    "TeamId": 15
  },
  {
    "Name": "Vitek Vanecek",
    "JerseyNumber": 41,
    "TeamId": 15
  },
  {
    "Name": "Daniel Sprong",
    "JerseyNumber": 10,
    "TeamId": 15
  },
  {
    "Name": "Ilya Samsonov",
    "JerseyNumber": 30,
    "TeamId": 15
  },
  {
    "Name": "Brent Seabrook",
    "JerseyNumber": 7,
    "TeamId": 16
  },
  {
    "Name": "Zack Smith",
    "JerseyNumber": 15,
    "TeamId": 16
  },
  {
    "Name": "Andrew Shaw",
    "JerseyNumber": 65,
    "TeamId": 16
  },
  {
    "Name": "Jonathan Toews",
    "JerseyNumber": 19,
    "TeamId": 16
  },
  {
    "Name": "Alex Nylander",
    "JerseyNumber": 92,
    "TeamId": 16
  },
  {
    "Name": "Duncan Keith",
    "JerseyNumber": 2,
    "TeamId": 16
  },
  {
    "Name": "Patrick Kane",
    "JerseyNumber": 88,
    "TeamId": 16
  },
  {
    "Name": "Calvin de Haan",
    "JerseyNumber": 44,
    "TeamId": 16
  },
  {
    "Name": "Brett Connolly",
    "JerseyNumber": 20,
    "TeamId": 16
  },
  {
    "Name": "Connor Murphy",
    "JerseyNumber": 5,
    "TeamId": 16
  },
  {
    "Name": "Malcolm Subban",
    "JerseyNumber": 30,
    "TeamId": 16
  },
  {
    "Name": "Vinnie Hinostroza",
    "JerseyNumber": 28,
    "TeamId": 16
  },
  {
    "Name": "Dominik Kubalik",
    "JerseyNumber": 8,
    "TeamId": 16
  },
  {
    "Name": "Nikita Zadorov",
    "JerseyNumber": 16,
    "TeamId": 16
  },
  {
    "Name": "Ryan Carpenter",
    "JerseyNumber": 22,
    "TeamId": 16
  },
  {
    "Name": "Dylan Strome",
    "JerseyNumber": 17,
    "TeamId": 16
  },
  {
    "Name": "Adam Gaudette",
    "JerseyNumber": 11,
    "TeamId": 16
  },
  {
    "Name": "Alex DeBrincat",
    "JerseyNumber": 12,
    "TeamId": 16
  },
  {
    "Name": "Riley Stillman",
    "JerseyNumber": 61,
    "TeamId": 16
  },
  {
    "Name": "Brandon Hagel",
    "JerseyNumber": 38,
    "TeamId": 16
  },
  {
    "Name": "Ian Mitchell",
    "JerseyNumber": 51,
    "TeamId": 16
  },
  {
    "Name": "David Kampf",
    "JerseyNumber": 64,
    "TeamId": 16
  },
  {
    "Name": "Wyatt Kalynuk",
    "JerseyNumber": 48,
    "TeamId": 16
  },
  {
    "Name": "Collin Delia",
    "JerseyNumber": 60,
    "TeamId": 16
  },
  {
    "Name": "Pius Suter",
    "JerseyNumber": 24,
    "TeamId": 16
  },
  {
    "Name": "Philipp Kurashev",
    "JerseyNumber": 23,
    "TeamId": 16
  },
  {
    "Name": "Adam Boqvist",
    "JerseyNumber": 27,
    "TeamId": 16
  },
  {
    "Name": "Kevin Lankinen",
    "JerseyNumber": 32,
    "TeamId": 16
  },
  {
    "Name": "Kirby Dach",
    "JerseyNumber": 77,
    "TeamId": 16
  },
  {
    "Name": "Mike Hardman",
    "JerseyNumber": 86,
    "TeamId": 16
  },
  {
    "Name": "Bobby Ryan",
    "JerseyNumber": 54,
    "TeamId": 17
  },
  {
    "Name": "Tyler Bertuzzi",
    "JerseyNumber": 59,
    "TeamId": 17
  },
  {
    "Name": "Robby Fabbri",
    "JerseyNumber": 14,
    "TeamId": 17
  },
  {
    "Name": "Mathias Brome",
    "JerseyNumber": 86,
    "TeamId": 17
  },
  {
    "Name": "Valtteri Filppula",
    "JerseyNumber": 51,
    "TeamId": 17
  },
  {
    "Name": "Thomas Greiss",
    "JerseyNumber": 29,
    "TeamId": 17
  },
  {
    "Name": "Marc Staal",
    "JerseyNumber": 18,
    "TeamId": 17
  },
  {
    "Name": "Darren Helm",
    "JerseyNumber": 43,
    "TeamId": 17
  },
  {
    "Name": "Alex Biega",
    "JerseyNumber": 3,
    "TeamId": 17
  },
  {
    "Name": "Jonathan Bernier",
    "JerseyNumber": 45,
    "TeamId": 17
  },
  {
    "Name": "Sam Gagner",
    "JerseyNumber": 89,
    "TeamId": 17
  },
  {
    "Name": "Richard Panik",
    "JerseyNumber": 24,
    "TeamId": 17
  },
  {
    "Name": "Vladislav Namestnikov",
    "JerseyNumber": 92,
    "TeamId": 17
  },
  {
    "Name": "Luke Glendening",
    "JerseyNumber": 41,
    "TeamId": 17
  },
  {
    "Name": "Christian Djoos",
    "JerseyNumber": 44,
    "TeamId": 17
  },
  {
    "Name": "Danny DeKeyser",
    "JerseyNumber": 65,
    "TeamId": 17
  },
  {
    "Name": "Adam Erne",
    "JerseyNumber": 73,
    "TeamId": 17
  },
  {
    "Name": "Jakub Vrana",
    "JerseyNumber": 15,
    "TeamId": 17
  },
  {
    "Name": "Dylan Larkin",
    "JerseyNumber": 71,
    "TeamId": 17
  },
  {
    "Name": "Evgeny Svechnikov",
    "JerseyNumber": 37,
    "TeamId": 17
  },
  {
    "Name": "Dennis Cholowski",
    "JerseyNumber": 21,
    "TeamId": 17
  },
  {
    "Name": "Filip Hronek",
    "JerseyNumber": 17,
    "TeamId": 17
  },
  {
    "Name": "Troy Stecher",
    "JerseyNumber": 70,
    "TeamId": 17
  },
  {
    "Name": "Michael Rasmussen",
    "JerseyNumber": 27,
    "TeamId": 17
  },
  {
    "Name": "Gustav Lindstrom",
    "JerseyNumber": 28,
    "TeamId": 17
  },
  {
    "Name": "Filip Zadina",
    "JerseyNumber": 11,
    "TeamId": 17
  },
  {
    "Name": "Brad Richardson",
    "JerseyNumber": 15,
    "TeamId": 18
  },
  {
    "Name": "Luca Sbisa",
    "JerseyNumber": 55,
    "TeamId": 18
  },
  {
    "Name": "Mark Borowiecki",
    "JerseyNumber": 90,
    "TeamId": 18
  },
  {
    "Name": "Matt Duchene",
    "JerseyNumber": 95,
    "TeamId": 18
  },
  {
    "Name": "Filip Forsberg",
    "JerseyNumber": 9,
    "TeamId": 18
  },
  {
    "Name": "Alexandre Carrier",
    "JerseyNumber": 45,
    "TeamId": 18
  },
  {
    "Name": "Mathieu Olivier",
    "JerseyNumber": 25,
    "TeamId": 18
  },
  {
    "Name": "Tyler Lewington",
    "JerseyNumber": 2,
    "TeamId": 18
  },
  {
    "Name": "Michael McCarron",
    "JerseyNumber": 47,
    "TeamId": 18
  },
  {
    "Name": "Kasimir Kaskisuo",
    "JerseyNumber": 73,
    "TeamId": 18
  },
  {
    "Name": "Rem Pitlick",
    "JerseyNumber": 16,
    "TeamId": 18
  },
  {
    "Name": "Tanner Jeannot",
    "JerseyNumber": 84,
    "TeamId": 18
  },
  {
    "Name": "Philip Tomasino",
    "JerseyNumber": 26,
    "TeamId": 18
  },
  {
    "Name": "Pekka Rinne",
    "JerseyNumber": 35,
    "TeamId": 18
  },
  {
    "Name": "Roman Josi",
    "JerseyNumber": 59,
    "TeamId": 18
  },
  {
    "Name": "Ryan Ellis",
    "JerseyNumber": 4,
    "TeamId": 18
  },
  {
    "Name": "Mattias Ekholm",
    "JerseyNumber": 14,
    "TeamId": 18
  },
  {
    "Name": "Erik Haula",
    "JerseyNumber": 56,
    "TeamId": 18
  },
  {
    "Name": "Calle Jarnkrok",
    "JerseyNumber": 19,
    "TeamId": 18
  },
  {
    "Name": "Erik Gudbranson",
    "JerseyNumber": 44,
    "TeamId": 18
  },
  {
    "Name": "Ryan Johansen",
    "JerseyNumber": 92,
    "TeamId": 18
  },
  {
    "Name": "Mikael Granlund",
    "JerseyNumber": 64,
    "TeamId": 18
  },
  {
    "Name": "Nick Cousins",
    "JerseyNumber": 21,
    "TeamId": 18
  },
  {
    "Name": "Rocco Grimaldi",
    "JerseyNumber": 23,
    "TeamId": 18
  },
  {
    "Name": "Colton Sissons",
    "JerseyNumber": 10,
    "TeamId": 18
  },
  {
    "Name": "Matt Benning",
    "JerseyNumber": 5,
    "TeamId": 18
  },
  {
    "Name": "Juuse Saros",
    "JerseyNumber": 74,
    "TeamId": 18
  },
  {
    "Name": "Ben Harpur",
    "JerseyNumber": 17,
    "TeamId": 18
  },
  {
    "Name": "Viktor Arvidsson",
    "JerseyNumber": 33,
    "TeamId": 18
  },
  {
    "Name": "Yakov Trenin",
    "JerseyNumber": 13,
    "TeamId": 18
  },
  {
    "Name": "Luke Kunin",
    "JerseyNumber": 11,
    "TeamId": 18
  },
  {
    "Name": "Dante Fabbro",
    "JerseyNumber": 57,
    "TeamId": 18
  },
  {
    "Name": "Jeremy Davies",
    "JerseyNumber": 38,
    "TeamId": 18
  },
  {
    "Name": "Eeli Tolvanen",
    "JerseyNumber": 28,
    "TeamId": 18
  },
  {
    "Name": "David Farrance",
    "JerseyNumber": 22,
    "TeamId": 18
  },
  {
    "Name": "Carl Gunnarsson",
    "JerseyNumber": 4,
    "TeamId": 19
  },
  {
    "Name": "Oskar Sundqvist",
    "JerseyNumber": 70,
    "TeamId": 19
  },
  {
    "Name": "Mackenzie MacEachern",
    "JerseyNumber": 28,
    "TeamId": 19
  },
  {
    "Name": "David Perron",
    "JerseyNumber": 57,
    "TeamId": 19
  },
  {
    "Name": "Robert Bortuzzo",
    "JerseyNumber": 41,
    "TeamId": 19
  },
  {
    "Name": "Marco Scandella",
    "JerseyNumber": 6,
    "TeamId": 19
  },
  {
    "Name": "Mike Hoffman",
    "JerseyNumber": 68,
    "TeamId": 19
  },
  {
    "Name": "Tyler Bozak",
    "JerseyNumber": 21,
    "TeamId": 19
  },
  {
    "Name": "Ryan O\u0027Reilly",
    "JerseyNumber": 90,
    "TeamId": 19
  },
  {
    "Name": "Kyle Clifford",
    "JerseyNumber": 13,
    "TeamId": 19
  },
  {
    "Name": "Brayden Schenn",
    "JerseyNumber": 10,
    "TeamId": 19
  },
  {
    "Name": "Justin Faulk",
    "JerseyNumber": 72,
    "TeamId": 19
  },
  {
    "Name": "Vladimir Tarasenko",
    "JerseyNumber": 91,
    "TeamId": 19
  },
  {
    "Name": "Jaden Schwartz",
    "JerseyNumber": 17,
    "TeamId": 19
  },
  {
    "Name": "Jordan Binnington",
    "JerseyNumber": 50,
    "TeamId": 19
  },
  {
    "Name": "Torey Krug",
    "JerseyNumber": 47,
    "TeamId": 19
  },
  {
    "Name": "Colton Parayko",
    "JerseyNumber": 55,
    "TeamId": 19
  },
  {
    "Name": "Zach Sanford",
    "JerseyNumber": 12,
    "TeamId": 19
  },
  {
    "Name": "Ivan Barbashev",
    "JerseyNumber": 49,
    "TeamId": 19
  },
  {
    "Name": "Jake Walman",
    "JerseyNumber": 46,
    "TeamId": 19
  },
  {
    "Name": "Ville Husso",
    "JerseyNumber": 35,
    "TeamId": 19
  },
  {
    "Name": "Sammy Blais",
    "JerseyNumber": 9,
    "TeamId": 19
  },
  {
    "Name": "Vince Dunn",
    "JerseyNumber": 29,
    "TeamId": 19
  },
  {
    "Name": "Niko Mikkola",
    "JerseyNumber": 77,
    "TeamId": 19
  },
  {
    "Name": "Jordan Kyrou",
    "JerseyNumber": 25,
    "TeamId": 19
  },
  {
    "Name": "Robert Thomas",
    "JerseyNumber": 18,
    "TeamId": 19
  },
  {
    "Name": "Zac Rinaldo",
    "JerseyNumber": 36,
    "TeamId": 20
  },
  {
    "Name": "Alexander Petrovic",
    "JerseyNumber": 15,
    "TeamId": 20
  },
  {
    "Name": "Oliver Kylington",
    "JerseyNumber": 58,
    "TeamId": 20
  },
  {
    "Name": "Dominik Simon",
    "JerseyNumber": 81,
    "TeamId": 20
  },
  {
    "Name": "Adam Ruzicka",
    "JerseyNumber": 63,
    "TeamId": 20
  },
  {
    "Name": "Artyom Zagidulin",
    "JerseyNumber": 50,
    "TeamId": 20
  },
  {
    "Name": "Mark Giordano",
    "JerseyNumber": 5,
    "TeamId": 20
  },
  {
    "Name": "Milan Lucic",
    "JerseyNumber": 17,
    "TeamId": 20
  },
  {
    "Name": "Mikael Backlund",
    "JerseyNumber": 11,
    "TeamId": 20
  },
  {
    "Name": "Jacob Markstrom",
    "JerseyNumber": 25,
    "TeamId": 20
  },
  {
    "Name": "Michael Stone",
    "JerseyNumber": 26,
    "TeamId": 20
  },
  {
    "Name": "Christopher Tanev",
    "JerseyNumber": 8,
    "TeamId": 20
  },
  {
    "Name": "Joakim Nordstrom",
    "JerseyNumber": 20,
    "TeamId": 20
  },
  {
    "Name": "Louis Domingue",
    "JerseyNumber": 70,
    "TeamId": 20
  },
  {
    "Name": "Nikita Nesterov",
    "JerseyNumber": 89,
    "TeamId": 20
  },
  {
    "Name": "Johnny Gaudreau",
    "JerseyNumber": 13,
    "TeamId": 20
  },
  {
    "Name": "Josh Leivo",
    "JerseyNumber": 27,
    "TeamId": 20
  },
  {
    "Name": "Brett Ritchie",
    "JerseyNumber": 24,
    "TeamId": 20
  },
  {
    "Name": "Buddy Robinson",
    "JerseyNumber": 53,
    "TeamId": 20
  },
  {
    "Name": "Elias Lindholm",
    "JerseyNumber": 28,
    "TeamId": 20
  },
  {
    "Name": "Sean Monahan",
    "JerseyNumber": 23,
    "TeamId": 20
  },
  {
    "Name": "Andrew Mangiapane",
    "JerseyNumber": 88,
    "TeamId": 20
  },
  {
    "Name": "Noah Hanifin",
    "JerseyNumber": 55,
    "TeamId": 20
  },
  {
    "Name": "Rasmus Andersson",
    "JerseyNumber": 4,
    "TeamId": 20
  },
  {
    "Name": "Derek Ryan",
    "JerseyNumber": 10,
    "TeamId": 20
  },
  {
    "Name": "Matthew Tkachuk",
    "JerseyNumber": 19,
    "TeamId": 20
  },
  {
    "Name": "Dillon Dube",
    "JerseyNumber": 29,
    "TeamId": 20
  },
  {
    "Name": "Juuso Valimaki",
    "JerseyNumber": 6,
    "TeamId": 20
  },
  {
    "Name": "Erik Johnson",
    "JerseyNumber": 6,
    "TeamId": 21
  },
  {
    "Name": "Matt Calvert",
    "JerseyNumber": 11,
    "TeamId": 21
  },
  {
    "Name": "Pavel Francouz",
    "JerseyNumber": 39,
    "TeamId": 21
  },
  {
    "Name": "Logan O\u0027Connor",
    "JerseyNumber": 25,
    "TeamId": 21
  },
  {
    "Name": "Jayson Megna",
    "JerseyNumber": 12,
    "TeamId": 21
  },
  {
    "Name": "Kyle Burroughs",
    "JerseyNumber": 88,
    "TeamId": 21
  },
  {
    "Name": "Jonas Johansson",
    "JerseyNumber": 35,
    "TeamId": 21
  },
  {
    "Name": "Dan Renouf",
    "JerseyNumber": 2,
    "TeamId": 21
  },
  {
    "Name": "Conor Timmins",
    "JerseyNumber": 22,
    "TeamId": 21
  },
  {
    "Name": "Kiefer Sherwood",
    "JerseyNumber": 44,
    "TeamId": 21
  },
  {
    "Name": "Bowen Byram",
    "JerseyNumber": 4,
    "TeamId": 21
  },
  {
    "Name": "Peyton Jones",
    "JerseyNumber": 42,
    "TeamId": 21
  },
  {
    "Name": "Devan Dubnyk",
    "JerseyNumber": 40,
    "TeamId": 21
  },
  {
    "Name": "Carl Soderberg",
    "JerseyNumber": 34,
    "TeamId": 21
  },
  {
    "Name": "Nazem Kadri",
    "JerseyNumber": 91,
    "TeamId": 21
  },
  {
    "Name": "Patrik Nemeth",
    "JerseyNumber": 24,
    "TeamId": 21
  },
  {
    "Name": "Joonas Donskoi",
    "JerseyNumber": 72,
    "TeamId": 21
  },
  {
    "Name": "Philipp Grubauer",
    "JerseyNumber": 31,
    "TeamId": 21
  },
  {
    "Name": "Brandon Saad",
    "JerseyNumber": 20,
    "TeamId": 21
  },
  {
    "Name": "Gabriel Landeskog",
    "JerseyNumber": 92,
    "TeamId": 21
  },
  {
    "Name": "Liam O\u0027Brien",
    "JerseyNumber": 38,
    "TeamId": 21
  },
  {
    "Name": "Ryan Graves",
    "JerseyNumber": 27,
    "TeamId": 21
  },
  {
    "Name": "Andre Burakovsky",
    "JerseyNumber": 95,
    "TeamId": 21
  },
  {
    "Name": "J.T. Compher",
    "JerseyNumber": 37,
    "TeamId": 21
  },
  {
    "Name": "Nathan MacKinnon",
    "JerseyNumber": 29,
    "TeamId": 21
  },
  {
    "Name": "Valeri Nichushkin",
    "JerseyNumber": 13,
    "TeamId": 21
  },
  {
    "Name": "Pierre-Edouard Bellemare",
    "JerseyNumber": 41,
    "TeamId": 21
  },
  {
    "Name": "Devon Toews",
    "JerseyNumber": 7,
    "TeamId": 21
  },
  {
    "Name": "Mikko Rantanen",
    "JerseyNumber": 96,
    "TeamId": 21
  },
  {
    "Name": "Tyson Jost",
    "JerseyNumber": 17,
    "TeamId": 21
  },
  {
    "Name": "Samuel Girard",
    "JerseyNumber": 49,
    "TeamId": 21
  },
  {
    "Name": "Jacob MacDonald",
    "JerseyNumber": 26,
    "TeamId": 21
  },
  {
    "Name": "Cale Makar",
    "JerseyNumber": 8,
    "TeamId": 21
  },
  {
    "Name": "Ryan Nugent-Hopkins",
    "JerseyNumber": 93,
    "TeamId": 22
  },
  {
    "Name": "Slater Koekkoek",
    "JerseyNumber": 20,
    "TeamId": 22
  },
  {
    "Name": "James Neal",
    "JerseyNumber": 18,
    "TeamId": 22
  },
  {
    "Name": "Kyle Turris",
    "JerseyNumber": 8,
    "TeamId": 22
  },
  {
    "Name": "Tyler Ennis",
    "JerseyNumber": 63,
    "TeamId": 22
  },
  {
    "Name": "Patrick Russell",
    "JerseyNumber": 52,
    "TeamId": 22
  },
  {
    "Name": "Evan Bouchard",
    "JerseyNumber": 75,
    "TeamId": 22
  },
  {
    "Name": "Joakim Nygard",
    "JerseyNumber": 10,
    "TeamId": 22
  },
  {
    "Name": "Mike Smith",
    "JerseyNumber": 41,
    "TeamId": 22
  },
  {
    "Name": "Kris Russell",
    "JerseyNumber": 4,
    "TeamId": 22
  },
  {
    "Name": "Alex Stalock",
    "JerseyNumber": 32,
    "TeamId": 22
  },
  {
    "Name": "Mikko Koskinen",
    "JerseyNumber": 19,
    "TeamId": 22
  },
  {
    "Name": "Alex Chiasson",
    "JerseyNumber": 39,
    "TeamId": 22
  },
  {
    "Name": "Zack Kassian",
    "JerseyNumber": 44,
    "TeamId": 22
  },
  {
    "Name": "Dmitry Kulikov",
    "JerseyNumber": 70,
    "TeamId": 22
  },
  {
    "Name": "Tyson Barrie",
    "JerseyNumber": 22,
    "TeamId": 22
  },
  {
    "Name": "Josh Archibald",
    "JerseyNumber": 15,
    "TeamId": 22
  },
  {
    "Name": "Adam Larsson",
    "JerseyNumber": 6,
    "TeamId": 22
  },
  {
    "Name": "Devin Shore",
    "JerseyNumber": 14,
    "TeamId": 22
  },
  {
    "Name": "Jujhar Khaira",
    "JerseyNumber": 16,
    "TeamId": 22
  },
  {
    "Name": "Darnell Nurse",
    "JerseyNumber": 25,
    "TeamId": 22
  },
  {
    "Name": "Leon Draisaitl",
    "JerseyNumber": 29,
    "TeamId": 22
  },
  {
    "Name": "William Lagesson",
    "JerseyNumber": 84,
    "TeamId": 22
  },
  {
    "Name": "Connor McDavid",
    "JerseyNumber": 97,
    "TeamId": 22
  },
  {
    "Name": "Ethan Bear",
    "JerseyNumber": 74,
    "TeamId": 22
  },
  {
    "Name": "Caleb Jones",
    "JerseyNumber": 82,
    "TeamId": 22
  },
  {
    "Name": "Jesse Puljujarvi",
    "JerseyNumber": 13,
    "TeamId": 22
  },
  {
    "Name": "Kailer Yamamoto",
    "JerseyNumber": 56,
    "TeamId": 22
  },
  {
    "Name": "Dominik Kahun",
    "JerseyNumber": 21,
    "TeamId": 22
  },
  {
    "Name": "Gaetan Haas",
    "JerseyNumber": 91,
    "TeamId": 22
  },
  {
    "Name": "Jay Beagle",
    "JerseyNumber": 83,
    "TeamId": 23
  },
  {
    "Name": "Tanner Pearson",
    "JerseyNumber": 70,
    "TeamId": 23
  },
  {
    "Name": "Justin Bailey",
    "JerseyNumber": 95,
    "TeamId": 23
  },
  {
    "Name": "Elias Pettersson",
    "JerseyNumber": 40,
    "TeamId": 23
  },
  {
    "Name": "Alexander Edler",
    "JerseyNumber": 23,
    "TeamId": 23
  },
  {
    "Name": "Brandon Sutter",
    "JerseyNumber": 20,
    "TeamId": 23
  },
  {
    "Name": "Tyler Myers",
    "JerseyNumber": 57,
    "TeamId": 23
  },
  {
    "Name": "Travis Hamonic",
    "JerseyNumber": 27,
    "TeamId": 23
  },
  {
    "Name": "Braden Holtby",
    "JerseyNumber": 49,
    "TeamId": 23
  },
  {
    "Name": "Antoine Roussel",
    "JerseyNumber": 26,
    "TeamId": 23
  },
  {
    "Name": "Travis Boyd",
    "JerseyNumber": 72,
    "TeamId": 23
  },
  {
    "Name": "J.T. Miller",
    "JerseyNumber": 9,
    "TeamId": 23
  },
  {
    "Name": "Jimmy Vesey",
    "JerseyNumber": 24,
    "TeamId": 23
  },
  {
    "Name": "Ashton Sautner",
    "JerseyNumber": 29,
    "TeamId": 23
  },
  {
    "Name": "Nate Schmidt",
    "JerseyNumber": 88,
    "TeamId": 23
  },
  {
    "Name": "Tyler Motte",
    "JerseyNumber": 64,
    "TeamId": 23
  },
  {
    "Name": "Bo Horvat",
    "JerseyNumber": 53,
    "TeamId": 23
  },
  {
    "Name": "Jake Virtanen",
    "JerseyNumber": 18,
    "TeamId": 23
  },
  {
    "Name": "Jayce Hawryluk",
    "JerseyNumber": 13,
    "TeamId": 23
  },
  {
    "Name": "Thatcher Demko",
    "JerseyNumber": 35,
    "TeamId": 23
  },
  {
    "Name": "Matthew Highmore",
    "JerseyNumber": 36,
    "TeamId": 23
  },
  {
    "Name": "Brock Boeser",
    "JerseyNumber": 6,
    "TeamId": 23
  },
  {
    "Name": "Jalen Chatfield",
    "JerseyNumber": 63,
    "TeamId": 23
  },
  {
    "Name": "Zack MacEwen",
    "JerseyNumber": 71,
    "TeamId": 23
  },
  {
    "Name": "Quinn Hughes",
    "JerseyNumber": 43,
    "TeamId": 23
  },
  {
    "Name": "Brogan Rafferty",
    "JerseyNumber": 25,
    "TeamId": 23
  },
  {
    "Name": "Nils Hoglander",
    "JerseyNumber": 36,
    "TeamId": 23
  },
  {
    "Name": "Marc Michaelis",
    "JerseyNumber": 56,
    "TeamId": 23
  },
  {
    "Name": "Hampus Lindholm",
    "JerseyNumber": 47,
    "TeamId": 24
  },
  {
    "Name": "Carter Rowney",
    "JerseyNumber": 24,
    "TeamId": 24
  },
  {
    "Name": "Sonny Milano",
    "JerseyNumber": 12,
    "TeamId": 24
  },
  {
    "Name": "Andrew Agozzino",
    "JerseyNumber": 26,
    "TeamId": 24
  },
  {
    "Name": "Sam Carrick",
    "JerseyNumber": 39,
    "TeamId": 24
  },
  {
    "Name": "Chase De Leo",
    "JerseyNumber": 58,
    "TeamId": 24
  },
  {
    "Name": "Trevor Zegras",
    "JerseyNumber": 46,
    "TeamId": 24
  },
  {
    "Name": "Ryan Miller",
    "JerseyNumber": 30,
    "TeamId": 24
  },
  {
    "Name": "Ryan Getzlaf",
    "JerseyNumber": 15,
    "TeamId": 24
  },
  {
    "Name": "Kevin Shattenkirk",
    "JerseyNumber": 22,
    "TeamId": 24
  },
  {
    "Name": "Adam Henrique",
    "JerseyNumber": 14,
    "TeamId": 24
  },
  {
    "Name": "Derek Grant",
    "JerseyNumber": 38,
    "TeamId": 24
  },
  {
    "Name": "Jakob Silfverberg",
    "JerseyNumber": 33,
    "TeamId": 24
  },
  {
    "Name": "Nicolas Deslauriers",
    "JerseyNumber": 20,
    "TeamId": 24
  },
  {
    "Name": "Cam Fowler",
    "JerseyNumber": 4,
    "TeamId": 24
  },
  {
    "Name": "Josh Manson",
    "JerseyNumber": 42,
    "TeamId": 24
  },
  {
    "Name": "Andy Welinski",
    "JerseyNumber": 45,
    "TeamId": 24
  },
  {
    "Name": "John Gibson",
    "JerseyNumber": 36,
    "TeamId": 24
  },
  {
    "Name": "Rickard Rakell",
    "JerseyNumber": 67,
    "TeamId": 24
  },
  {
    "Name": "Anthony Stolarz",
    "JerseyNumber": 41,
    "TeamId": 24
  },
  {
    "Name": "Haydn Fleury",
    "JerseyNumber": 51,
    "TeamId": 24
  },
  {
    "Name": "Danton Heinen",
    "JerseyNumber": 43,
    "TeamId": 24
  },
  {
    "Name": "Jacob Larsson",
    "JerseyNumber": 32,
    "TeamId": 24
  },
  {
    "Name": "Troy Terry",
    "JerseyNumber": 61,
    "TeamId": 24
  },
  {
    "Name": "Sam Steel",
    "JerseyNumber": 23,
    "TeamId": 24
  },
  {
    "Name": "Max Jones",
    "JerseyNumber": 49,
    "TeamId": 24
  },
  {
    "Name": "Max Comtois",
    "JerseyNumber": 53,
    "TeamId": 24
  },
  {
    "Name": "Alexander Volkov",
    "JerseyNumber": 92,
    "TeamId": 24
  },
  {
    "Name": "Isac Lundestrom",
    "JerseyNumber": 48,
    "TeamId": 24
  },
  {
    "Name": "Jamie Drysdale",
    "JerseyNumber": 34,
    "TeamId": 24
  },
  {
    "Name": "Alexander Radulov",
    "JerseyNumber": 47,
    "TeamId": 25
  },
  {
    "Name": "Joel Kiviranta",
    "JerseyNumber": 25,
    "TeamId": 25
  },
  {
    "Name": "Ben Bishop",
    "JerseyNumber": 30,
    "TeamId": 25
  },
  {
    "Name": "Stephen Johns",
    "JerseyNumber": 28,
    "TeamId": 25
  },
  {
    "Name": "Tyler Seguin",
    "JerseyNumber": 91,
    "TeamId": 25
  },
  {
    "Name": "Taylor Fedun",
    "JerseyNumber": 42,
    "TeamId": 25
  },
  {
    "Name": "Joel L\u0027Esperance",
    "JerseyNumber": 38,
    "TeamId": 25
  },
  {
    "Name": "Joe Pavelski",
    "JerseyNumber": 16,
    "TeamId": 25
  },
  {
    "Name": "Blake Comeau",
    "JerseyNumber": 15,
    "TeamId": 25
  },
  {
    "Name": "Andrej Sekera",
    "JerseyNumber": 5,
    "TeamId": 25
  },
  {
    "Name": "Anton Khudobin",
    "JerseyNumber": 35,
    "TeamId": 25
  },
  {
    "Name": "Andrew Cogliano",
    "JerseyNumber": 11,
    "TeamId": 25
  },
  {
    "Name": "Jamie Benn",
    "JerseyNumber": 14,
    "TeamId": 25
  },
  {
    "Name": "Sami Vatanen",
    "JerseyNumber": 45,
    "TeamId": 25
  },
  {
    "Name": "Justin Dowling",
    "JerseyNumber": 37,
    "TeamId": 25
  },
  {
    "Name": "Mark Pysyk",
    "JerseyNumber": 13,
    "TeamId": 25
  },
  {
    "Name": "John Klingberg",
    "JerseyNumber": 3,
    "TeamId": 25
  },
  {
    "Name": "Jamie Oleksiak",
    "JerseyNumber": 2,
    "TeamId": 25
  },
  {
    "Name": "Radek Faksa",
    "JerseyNumber": 12,
    "TeamId": 25
  },
  {
    "Name": "Esa Lindell",
    "JerseyNumber": 23,
    "TeamId": 25
  },
  {
    "Name": "Jason Dickinson",
    "JerseyNumber": 18,
    "TeamId": 25
  },
  {
    "Name": "Joel Hanley",
    "JerseyNumber": 44,
    "TeamId": 25
  },
  {
    "Name": "Roope Hintz",
    "JerseyNumber": 24,
    "TeamId": 25
  },
  {
    "Name": "Denis Gurianov",
    "JerseyNumber": 34,
    "TeamId": 25
  },
  {
    "Name": "Tanner Kero",
    "JerseyNumber": 64,
    "TeamId": 25
  },
  {
    "Name": "Rhett Gardner",
    "JerseyNumber": 49,
    "TeamId": 25
  },
  {
    "Name": "Jake Oettinger",
    "JerseyNumber": 29,
    "TeamId": 25
  },
  {
    "Name": "Jason Robertson",
    "JerseyNumber": 21,
    "TeamId": 25
  },
  {
    "Name": "Miro Heiskanen",
    "JerseyNumber": 4,
    "TeamId": 25
  },
  {
    "Name": "Martin Frk",
    "JerseyNumber": 29,
    "TeamId": 26
  },
  {
    "Name": "Troy Grosenick",
    "JerseyNumber": 1,
    "TeamId": 26
  },
  {
    "Name": "Lias Andersson",
    "JerseyNumber": 24,
    "TeamId": 26
  },
  {
    "Name": "Cole Hults",
    "JerseyNumber": 54,
    "TeamId": 26
  },
  {
    "Name": "Drake Rymsha",
    "JerseyNumber": 43,
    "TeamId": 26
  },
  {
    "Name": "Austin Strand",
    "JerseyNumber": 71,
    "TeamId": 26
  },
  {
    "Name": "Dustin Brown",
    "JerseyNumber": 23,
    "TeamId": 26
  },
  {
    "Name": "Anze Kopitar",
    "JerseyNumber": 11,
    "TeamId": 26
  },
  {
    "Name": "Jonathan Quick",
    "JerseyNumber": 32,
    "TeamId": 26
  },
  {
    "Name": "Drew Doughty",
    "JerseyNumber": 8,
    "TeamId": 26
  },
  {
    "Name": "Olli Maatta",
    "JerseyNumber": 6,
    "TeamId": 26
  },
  {
    "Name": "Andreas Athanasiou",
    "JerseyNumber": 22,
    "TeamId": 26
  },
  {
    "Name": "Kurtis MacDermid",
    "JerseyNumber": 56,
    "TeamId": 26
  },
  {
    "Name": "Calvin Petersen",
    "JerseyNumber": 40,
    "TeamId": 26
  },
  {
    "Name": "Adrian Kempe",
    "JerseyNumber": 9,
    "TeamId": 26
  },
  {
    "Name": "Brendan Lemieux",
    "JerseyNumber": 48,
    "TeamId": 26
  },
  {
    "Name": "Austin Wagner",
    "JerseyNumber": 27,
    "TeamId": 26
  },
  {
    "Name": "Christian Wolanin",
    "JerseyNumber": 21,
    "TeamId": 26
  },
  {
    "Name": "Carl Grundstrom",
    "JerseyNumber": 91,
    "TeamId": 26
  },
  {
    "Name": "Kale Clague",
    "JerseyNumber": 58,
    "TeamId": 26
  },
  {
    "Name": "Matt Luff",
    "JerseyNumber": 64,
    "TeamId": 26
  },
  {
    "Name": "Trevor Moore",
    "JerseyNumber": 12,
    "TeamId": 26
  },
  {
    "Name": "Jaret Anderson-Dolan",
    "JerseyNumber": 28,
    "TeamId": 26
  },
  {
    "Name": "Mikey Anderson",
    "JerseyNumber": 44,
    "TeamId": 26
  },
  {
    "Name": "Gabriel Vilardi",
    "JerseyNumber": 13,
    "TeamId": 26
  },
  {
    "Name": "Alex Iafallo",
    "JerseyNumber": 19,
    "TeamId": 26
  },
  {
    "Name": "Sean Walker",
    "JerseyNumber": 26,
    "TeamId": 26
  },
  {
    "Name": "Blake Lizotte",
    "JerseyNumber": 46,
    "TeamId": 26
  },
  {
    "Name": "Tobias Bjornfot",
    "JerseyNumber": 33,
    "TeamId": 26
  },
  {
    "Name": "Matt Nieto",
    "JerseyNumber": 83,
    "TeamId": 28
  },
  {
    "Name": "Patrick Marleau",
    "JerseyNumber": 12,
    "TeamId": 28
  },
  {
    "Name": "Brent Burns",
    "JerseyNumber": 88,
    "TeamId": 28
  },
  {
    "Name": "Marc-Edouard Vlasic",
    "JerseyNumber": 44,
    "TeamId": 28
  },
  {
    "Name": "Logan Couture",
    "JerseyNumber": 39,
    "TeamId": 28
  },
  {
    "Name": "Erik Karlsson",
    "JerseyNumber": 65,
    "TeamId": 28
  },
  {
    "Name": "Greg Pateryn",
    "JerseyNumber": 2,
    "TeamId": 28
  },
  {
    "Name": "Martin Jones",
    "JerseyNumber": 31,
    "TeamId": 28
  },
  {
    "Name": "Evander Kane",
    "JerseyNumber": 9,
    "TeamId": 28
  },
  {
    "Name": "Marcus Sorensen",
    "JerseyNumber": 20,
    "TeamId": 28
  },
  {
    "Name": "Kurtis Gabriel",
    "JerseyNumber": 29,
    "TeamId": 28
  },
  {
    "Name": "Tomas Hertl",
    "JerseyNumber": 48,
    "TeamId": 28
  },
  {
    "Name": "Ryan Donato",
    "JerseyNumber": 16,
    "TeamId": 28
  },
  {
    "Name": "Kevin Labanc",
    "JerseyNumber": 62,
    "TeamId": 28
  },
  {
    "Name": "Timo Meier",
    "JerseyNumber": 28,
    "TeamId": 28
  },
  {
    "Name": "Christian Jaros",
    "JerseyNumber": 47,
    "TeamId": 28
  },
  {
    "Name": "Rudolfs Balcers",
    "JerseyNumber": 92,
    "TeamId": 28
  },
  {
    "Name": "Noah Gregor",
    "JerseyNumber": 73,
    "TeamId": 28
  },
  {
    "Name": "Dylan Gambrell",
    "JerseyNumber": 7,
    "TeamId": 28
  },
  {
    "Name": "Jeffrey Viel",
    "JerseyNumber": 63,
    "TeamId": 28
  },
  {
    "Name": "Mario Ferraro",
    "JerseyNumber": 38,
    "TeamId": 28
  },
  {
    "Name": "Radim Simek",
    "JerseyNumber": 51,
    "TeamId": 28
  },
  {
    "Name": "Josef Korenar",
    "JerseyNumber": 32,
    "TeamId": 28
  },
  {
    "Name": "John Leonard",
    "JerseyNumber": 43,
    "TeamId": 28
  },
  {
    "Name": "Nikolai Knyzhov",
    "JerseyNumber": 71,
    "TeamId": 28
  },
  {
    "Name": "Fredrik Handemark",
    "JerseyNumber": 37,
    "TeamId": 28
  },
  {
    "Name": "Boone Jenner",
    "JerseyNumber": 38,
    "TeamId": 29
  },
  {
    "Name": "Zach Werenski",
    "JerseyNumber": 8,
    "TeamId": 29
  },
  {
    "Name": "Emil Bemstrom",
    "JerseyNumber": 52,
    "TeamId": 29
  },
  {
    "Name": "Gustav Nyquist",
    "JerseyNumber": 14,
    "TeamId": 29
  },
  {
    "Name": "Michael Del Zotto",
    "JerseyNumber": 15,
    "TeamId": 29
  },
  {
    "Name": "Zac Dalpe",
    "JerseyNumber": 26,
    "TeamId": 29
  },
  {
    "Name": "Cam Atkinson",
    "JerseyNumber": 13,
    "TeamId": 29
  },
  {
    "Name": "Scott Harrington",
    "JerseyNumber": 4,
    "TeamId": 29
  },
  {
    "Name": "Stefan Matteau",
    "JerseyNumber": 23,
    "TeamId": 29
  },
  {
    "Name": "Joonas Korpisalo",
    "JerseyNumber": 70,
    "TeamId": 29
  },
  {
    "Name": "Oliver Bjorkstrand",
    "JerseyNumber": 28,
    "TeamId": 29
  },
  {
    "Name": "Seth Jones",
    "JerseyNumber": 3,
    "TeamId": 29
  },
  {
    "Name": "Max Domi",
    "JerseyNumber": 16,
    "TeamId": 29
  },
  {
    "Name": "Ryan MacInnis",
    "JerseyNumber": 49,
    "TeamId": 29
  },
  {
    "Name": "Elvis Merzlikins",
    "JerseyNumber": 90,
    "TeamId": 29
  },
  {
    "Name": "Jack Roslovic",
    "JerseyNumber": 96,
    "TeamId": 29
  },
  {
    "Name": "Gabriel Carlsson",
    "JerseyNumber": 53,
    "TeamId": 29
  },
  {
    "Name": "Dean Kukan",
    "JerseyNumber": 46,
    "TeamId": 29
  },
  {
    "Name": "Kevin Stenlund",
    "JerseyNumber": 11,
    "TeamId": 29
  },
  {
    "Name": "Vladislav Gavrikov",
    "JerseyNumber": 44,
    "TeamId": 29
  },
  {
    "Name": "Kole Sherwood",
    "JerseyNumber": 88,
    "TeamId": 29
  },
  {
    "Name": "Patrik Laine",
    "JerseyNumber": 29,
    "TeamId": 29
  },
  {
    "Name": "Andrew Peeke",
    "JerseyNumber": 2,
    "TeamId": 29
  },
  {
    "Name": "Alexandre Texier",
    "JerseyNumber": 42,
    "TeamId": 29
  },
  {
    "Name": "Eric Robinson",
    "JerseyNumber": 50,
    "TeamId": 29
  },
  {
    "Name": "Mikko Lehtonen",
    "JerseyNumber": 43,
    "TeamId": 29
  },
  {
    "Name": "Joshua Dunne",
    "JerseyNumber": 21,
    "TeamId": 29
  },
  {
    "Name": "Joseph Cramarossa",
    "JerseyNumber": 56,
    "TeamId": 30
  },
  {
    "Name": "Kyle Rau",
    "JerseyNumber": 37,
    "TeamId": 30
  },
  {
    "Name": "Andrew Hammond",
    "JerseyNumber": 35,
    "TeamId": 30
  },
  {
    "Name": "Luke Johnson",
    "JerseyNumber": 41,
    "TeamId": 30
  },
  {
    "Name": "Dakota Mermis",
    "JerseyNumber": 57,
    "TeamId": 30
  },
  {
    "Name": "Ryan Suter",
    "JerseyNumber": 20,
    "TeamId": 30
  },
  {
    "Name": "Zach Parise",
    "JerseyNumber": 11,
    "TeamId": 30
  },
  {
    "Name": "Nick Bonino",
    "JerseyNumber": 13,
    "TeamId": 30
  },
  {
    "Name": "Ian Cole",
    "JerseyNumber": 28,
    "TeamId": 30
  },
  {
    "Name": "Jared Spurgeon",
    "JerseyNumber": 46,
    "TeamId": 30
  },
  {
    "Name": "Marcus Johansson",
    "JerseyNumber": 90,
    "TeamId": 30
  },
  {
    "Name": "Marcus Foligno",
    "JerseyNumber": 17,
    "TeamId": 30
  },
  {
    "Name": "Cam Talbot",
    "JerseyNumber": 33,
    "TeamId": 30
  },
  {
    "Name": "Mats Zuccarello",
    "JerseyNumber": 36,
    "TeamId": 30
  },
  {
    "Name": "Nick Bjugstad",
    "JerseyNumber": 27,
    "TeamId": 30
  },
  {
    "Name": "Victor Rask",
    "JerseyNumber": 49,
    "TeamId": 30
  },
  {
    "Name": "Jonas Brodin",
    "JerseyNumber": 25,
    "TeamId": 30
  },
  {
    "Name": "Brad Hunt",
    "JerseyNumber": 77,
    "TeamId": 30
  },
  {
    "Name": "Matt Dumba",
    "JerseyNumber": 24,
    "TeamId": 30
  },
  {
    "Name": "Carson Soucy",
    "JerseyNumber": 21,
    "TeamId": 30
  },
  {
    "Name": "Ryan Hartman",
    "JerseyNumber": 38,
    "TeamId": 30
  },
  {
    "Name": "Kevin Fiala",
    "JerseyNumber": 22,
    "TeamId": 30
  },
  {
    "Name": "Kaapo Kahkonen",
    "JerseyNumber": 34,
    "TeamId": 30
  },
  {
    "Name": "Jordan Greenway",
    "JerseyNumber": 18,
    "TeamId": 30
  },
  {
    "Name": "Joel Eriksson Ek",
    "JerseyNumber": 14,
    "TeamId": 30
  },
  {
    "Name": "Kirill Kaprizov",
    "JerseyNumber": 97,
    "TeamId": 30
  },
  {
    "Name": "Nico Sturm",
    "JerseyNumber": 7,
    "TeamId": 30
  },
  {
    "Name": "Bryan Little",
    "JerseyNumber": 18,
    "TeamId": 52
  },
  {
    "Name": "Nathan Beaulieu",
    "JerseyNumber": 88,
    "TeamId": 52
  },
  {
    "Name": "Nate Thompson",
    "JerseyNumber": 11,
    "TeamId": 52
  },
  {
    "Name": "Blake Wheeler",
    "JerseyNumber": 26,
    "TeamId": 52
  },
  {
    "Name": "Paul Stastny",
    "JerseyNumber": 25,
    "TeamId": 52
  },
  {
    "Name": "Trevor Lewis",
    "JerseyNumber": 23,
    "TeamId": 52
  },
  {
    "Name": "Mathieu Perreault",
    "JerseyNumber": 85,
    "TeamId": 52
  },
  {
    "Name": "Jordie Benn",
    "JerseyNumber": 40,
    "TeamId": 52
  },
  {
    "Name": "Derek Forbort",
    "JerseyNumber": 24,
    "TeamId": 52
  },
  {
    "Name": "Laurent Brossoit",
    "JerseyNumber": 30,
    "TeamId": 52
  },
  {
    "Name": "Dylan DeMelo",
    "JerseyNumber": 2,
    "TeamId": 52
  },
  {
    "Name": "Adam Lowry",
    "JerseyNumber": 17,
    "TeamId": 52
  },
  {
    "Name": "Mark Scheifele",
    "JerseyNumber": 55,
    "TeamId": 52
  },
  {
    "Name": "Connor Hellebuyck",
    "JerseyNumber": 37,
    "TeamId": 52
  },
  {
    "Name": "Tucker Poolman",
    "JerseyNumber": 3,
    "TeamId": 52
  },
  {
    "Name": "Andrew Copp",
    "JerseyNumber": 9,
    "TeamId": 52
  },
  {
    "Name": "Josh Morrissey",
    "JerseyNumber": 44,
    "TeamId": 52
  },
  {
    "Name": "Nikolaj Ehlers",
    "JerseyNumber": 27,
    "TeamId": 52
  },
  {
    "Name": "Kyle Connor",
    "JerseyNumber": 81,
    "TeamId": 52
  },
  {
    "Name": "Jansen Harkins",
    "JerseyNumber": 12,
    "TeamId": 52
  },
  {
    "Name": "Mason Appleton",
    "JerseyNumber": 22,
    "TeamId": 52
  },
  {
    "Name": "Sami Niku",
    "JerseyNumber": 8,
    "TeamId": 52
  },
  {
    "Name": "Logan Stanley",
    "JerseyNumber": 64,
    "TeamId": 52
  },
  {
    "Name": "Pierre-Luc Dubois",
    "JerseyNumber": 13,
    "TeamId": 52
  },
  {
    "Name": "Neal Pionk",
    "JerseyNumber": 4,
    "TeamId": 52
  },
  {
    "Name": "Darcy Kuemper",
    "JerseyNumber": 35,
    "TeamId": 53
  },
  {
    "Name": "Jordan Gross",
    "JerseyNumber": 79,
    "TeamId": 53
  },
  {
    "Name": "Alex Goligoski",
    "JerseyNumber": 33,
    "TeamId": 53
  },
  {
    "Name": "Niklas Hjalmarsson",
    "JerseyNumber": 4,
    "TeamId": 53
  },
  {
    "Name": "Derick Brassard",
    "JerseyNumber": 16,
    "TeamId": 53
  },
  {
    "Name": "Phil Kessel",
    "JerseyNumber": 81,
    "TeamId": 53
  },
  {
    "Name": "Jason Demers",
    "JerseyNumber": 55,
    "TeamId": 53
  },
  {
    "Name": "Oliver Ekman-Larsson",
    "JerseyNumber": 23,
    "TeamId": 53
  },
  {
    "Name": "Johan Larsson",
    "JerseyNumber": 22,
    "TeamId": 53
  },
  {
    "Name": "Tyler Pitlick",
    "JerseyNumber": 17,
    "TeamId": 53
  },
  {
    "Name": "Antti Raanta",
    "JerseyNumber": 32,
    "TeamId": 53
  },
  {
    "Name": "John Hayden",
    "JerseyNumber": 15,
    "TeamId": 53
  },
  {
    "Name": "Jordan Oesterle",
    "JerseyNumber": 82,
    "TeamId": 53
  },
  {
    "Name": "Nick Schmaltz",
    "JerseyNumber": 8,
    "TeamId": 53
  },
  {
    "Name": "Christian Dvorak",
    "JerseyNumber": 18,
    "TeamId": 53
  },
  {
    "Name": "Michael Bunting",
    "JerseyNumber": 58,
    "TeamId": 53
  },
  {
    "Name": "Dryden Hunt",
    "JerseyNumber": 28,
    "TeamId": 53
  },
  {
    "Name": "Christian Fischer",
    "JerseyNumber": 36,
    "TeamId": 53
  },
  {
    "Name": "Lawson Crouse",
    "JerseyNumber": 67,
    "TeamId": 53
  },
  {
    "Name": "Adin Hill",
    "JerseyNumber": 31,
    "TeamId": 53
  },
  {
    "Name": "Conor Garland",
    "JerseyNumber": 83,
    "TeamId": 53
  },
  {
    "Name": "Clayton Keller",
    "JerseyNumber": 9,
    "TeamId": 53
  },
  {
    "Name": "Jakob Chychrun",
    "JerseyNumber": 6,
    "TeamId": 53
  },
  {
    "Name": "Ilya Lyubushkin",
    "JerseyNumber": 46,
    "TeamId": 53
  },
  {
    "Name": "Ryan Reaves",
    "JerseyNumber": 75,
    "TeamId": 54
  },
  {
    "Name": "Nick Holden",
    "JerseyNumber": 22,
    "TeamId": 54
  },
  {
    "Name": "Marc-Andre Fleury",
    "JerseyNumber": 29,
    "TeamId": 54
  },
  {
    "Name": "Max Pacioretty",
    "JerseyNumber": 67,
    "TeamId": 54
  },
  {
    "Name": "Alec Martinez",
    "JerseyNumber": 23,
    "TeamId": 54
  },
  {
    "Name": "Alex Pietrangelo",
    "JerseyNumber": 7,
    "TeamId": 54
  },
  {
    "Name": "Brayden McNabb",
    "JerseyNumber": 3,
    "TeamId": 54
  },
  {
    "Name": "Reilly Smith",
    "JerseyNumber": 19,
    "TeamId": 54
  },
  {
    "Name": "Robin Lehner",
    "JerseyNumber": 90,
    "TeamId": 54
  },
  {
    "Name": "Mark Stone",
    "JerseyNumber": 61,
    "TeamId": 54
  },
  {
    "Name": "Tomas Jurco",
    "JerseyNumber": 13,
    "TeamId": 54
  },
  {
    "Name": "William Karlsson",
    "JerseyNumber": 71,
    "TeamId": 54
  },
  {
    "Name": "Jonathan Marchessault",
    "JerseyNumber": 81,
    "TeamId": 54
  },
  {
    "Name": "Chandler Stephenson",
    "JerseyNumber": 20,
    "TeamId": 54
  },
  {
    "Name": "Mattias Janmark",
    "JerseyNumber": 26,
    "TeamId": 54
  },
  {
    "Name": "Shea Theodore",
    "JerseyNumber": 27,
    "TeamId": 54
  },
  {
    "Name": "William Carrier",
    "JerseyNumber": 28,
    "TeamId": 54
  },
  {
    "Name": "Tomas Nosek",
    "JerseyNumber": 92,
    "TeamId": 54
  },
  {
    "Name": "Alex Tuch",
    "JerseyNumber": 89,
    "TeamId": 54
  },
  {
    "Name": "Keegan Kolesar",
    "JerseyNumber": 55,
    "TeamId": 54
  },
  {
    "Name": "Nicolas Roy",
    "JerseyNumber": 10,
    "TeamId": 54
  },
  {
    "Name": "Dylan Coghlan",
    "JerseyNumber": 52,
    "TeamId": 54
  },
  {
    "Name": "Nicolas Hague",
    "JerseyNumber": 14,
    "TeamId": 54
  },
  {
    "Name": "Zach Whitecloud",
    "JerseyNumber": 2,
    "TeamId": 54
  }
]')
    with (Name nvarchar(max), JerseyNumber int, TeamId int)