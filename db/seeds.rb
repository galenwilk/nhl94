# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create(name: 'ANAHEIM MIGHTY DUCKS', rating: "51", logo: "mighty_ducks.gif")
Team.create(name: 'BOSTON BRUINS', rating: "76", logo: "bruins.gif")
Team.create(name: 'BUFFALO SABRES', rating: "73", logo: "sabres.gif")
Team.create(name: 'CALGARY FLAMES', rating: "75", logo: "flames.gif")
Team.create(name: 'CHICAGO BLACKHAWKS', rating: "78", logo: "blackhawks.gif")
Team.create(name: 'DALLAS STARS', rating: "67", logo: "stars.gif")
Team.create(name: 'DETROIT RED WINGS', rating: "75", logo: "red_wings.gif")
Team.create(name: 'EDMONTON OILERS', rating: "67", logo: "oilers.gif")
Team.create(name: 'FLORIDA PANTHERS', rating: "52", logo: "panthers.gif")
Team.create(name: 'HARTFORD WHALERS', rating: "66", logo: "whalers.gif")
Team.create(name: 'LOS ANGELES KINGS', rating: "74", logo: "kings.gif")
Team.create(name: 'MONTREAL CANADIENS', rating: "73", logo: "canadiens.gif")
Team.create(name: 'NEW JERSEY DEVILS', rating: "68", logo: "devils.gif")
Team.create(name: 'NEW YORK ISLANDERS', rating: "66", logo: "islanders.gif")
Team.create(name: 'NEW YORK RANGERS', rating: "74", logo: "rangers.gif")
Team.create(name: 'OTTAWA SENATORS', rating: "55", logo: "senators.gif")
Team.create(name: 'PHILADELPHIA FLYERS', rating: "69", logo: "flyers.gif")
Team.create(name: 'PITTSBURGH PENGUINS', rating: "75", logo: "penguins.gif")
Team.create(name: 'QUEBEC NORDIQUES', rating: "71", logo: "nordiques.gif")
Team.create(name: 'SAN JOSE SHARKS', rating: "56", logo: "sharks.gif")
Team.create(name: 'ST. LOUIS BLUES', rating: "69", logo: "blues.gif")
Team.create(name: 'TAMPA BAY LIGHTNING', rating: "56", logo: "lightning.gif")
Team.create(name: 'TORONTO MAPLE LEAFS', rating: "72", logo: "leafs.gif")
Team.create(name: 'VANCOUVER CANUCKS', rating: "71", logo: "canucks.gif")
Team.create(name: 'WASHINGTON CAPITALS', rating: "70", logo: "capitals.gif")
Team.create(name: 'WINNIPEG JETS', rating: "72", logo: "jets.gif")

matt = Player.create(name: "Matt", email: "matt@leaf.me")
galen = Player.create(name: "Galen", email: "galen@leaf.me")
evan = Player.create(name: "Evan", email: "evan@leaf.me")

team1, team2 = Team.all.sample(2)

Result.create(
           date: Date.today,
           team1: team1.id,
           team2: team2.id,
           team1Score: 3,
           team2Score: 2,
           player1Id: matt.id,
           player2Id: galen.id
           )

team1, team2 = Team.all.sample(2)

Result.create(
           date: Date.today,
           team1: team1.id,
           team2: team2.id,
           team1Score: 1,
           team2Score: 3,
           player1Id: matt.id,
           player2Id: galen.id
           )

team1, team2 = Team.all.sample(2)

Result.create(
           date: Date.today,
           team1: team1.id,
           team2: team2.id,
           team1Score: 1,
           team2Score: 1,
           player1Id: matt.id,
           player2Id: galen.id
           )

team1, team2 = Team.all.sample(2)

Result.create(
           date: Date.today,
           team1: team1.id,
           team2: team2.id,
           team1Score: 3,
           team2Score: 2,
           player1Id: evan.id,
           player2Id: galen.id
           )

team1, team2 = Team.all.sample(2)

Result.create(
           date: Date.today,
           team1: team1.id,
           team2: team2.id,
           team1Score: 1,
           team2Score: 3,
           player1Id: evan.id,
           player2Id: galen.id
           )

team1, team2 = Team.all.sample(2)

Result.create(
           date: Date.today,
           team1: team1.id,
           team2: team2.id,
           team1Score: 1,
           team2Score: 1,
           player1Id: evan.id,
           player2Id: galen.id
           )