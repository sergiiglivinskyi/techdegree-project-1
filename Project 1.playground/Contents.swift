//Project 1 - Soccer League Coordinator

//Create a single collection named 'players' that contains all information for all 18 players

let player1: [String:String] = ["name": "Joe Smith",            "height": "42", "experience": "YES",  "guardian": "Jim and Jan Smith"]
let player2: [String:String] = ["name": "Jill Tanner",          "height": "36", "experience": "YES",  "guardian": "Clara Tanner"]
let player3: [String:String] = ["name": "Bill Bon",             "height": "43", "experience": "YES",  "guardian": "Sara and Jenny Bon"]
let player4: [String:String] = ["name": "Eva Gordon",           "height": "45", "experience": "NO",   "guardian": "Wendy and Mike Gordon"]
let player5: [String:String] = ["name": "Matt Gill",            "height": "40", "experience": "NO",   "guardian": "Charles and Sylvia Gill"]
let player6: [String:String] = ["name": "Kimmy Stein",          "height": "41", "experience": "NO",   "guardian": "Bill and Hillary Stein"]
let player7: [String:String] = ["name": "Sammy Adams",          "height": "45", "experience": "NO",   "guardian": "Jeff Adams"]
let player8: [String:String] = ["name": "Karl Saygan",          "height": "42", "experience": "YES",  "guardian": "Heather Bledsoe"]
let player9: [String:String] = ["name": "Suzane Greenberg",     "height": "44", "experience": "YES",  "guardian": "Henrietta Dumas"]
let player10: [String:String] = ["name": "Sal Dali",            "height": "41", "experience": "NO",   "guardian": "Gala Dali"]
let player11: [String:String] = ["name": "Joe Kavalier",        "height": "39", "experience": "NO",   "guardian": "Sam and Elaine Kavalier"]
let player12: [String:String] = ["name": "Ben Finkelstein",     "height": "44", "experience": "NO",   "guardian": "Aaron and Jill Finkelstein"]
let player13: [String:String] = ["name": "Diego Soto",          "height": "41", "experience": "YES",  "guardian": "Robin and Sarika Soto"]
let player14: [String:String] = ["name": "Chloe Alaska",        "height": "47", "experience": "NO",   "guardian": "David and Jamie Alaska"]
let player15: [String:String] = ["name": "Arnold Willis",       "height": "43", "experience": "NO",   "guardian": "Claire Willis"]
let player16: [String:String] = ["name": "Phillip Helm",        "height": "44", "experience": "YES",  "guardian": "Thomas Helm and Eva Jones"]
let player17: [String:String] = ["name": "Les Clay",            "height": "42", "experience": "YES",  "guardian": "Wynonna Brown"]
let player18: [String:String] = ["name": "Herschel Krustofski", "height": "45", "experience": "YES",  "guardian": "Hyman and Rachel Krustofski"]


//Add all the players to the League collection

var league: [[String:String]] = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

//Iterate through the League and check each experience level. If a player is experienced, add the player to the experienced collection

//Create an empty collection for experienced players
var experiencedPlayers: [[String:String]] = []

//Iterate through the League and add experienced players to the experienced collection
for player in league{
    if player["experience"] == "YES"{
        experiencedPlayers.append(player)
    }
}

//Similarly, if a player is inexperienced, add the player to the inexperienced collection

//Create an empty collection for inexperienced players
var inexperiencedPlayers: [[String:String]] = []

//Iterate through the League and add inexperienced players to the inexperienced collection
for player in league{
    if player["experience"] == "NO"{
        inexperiencedPlayers.append(player)
    }
}


//Iterate through the experienced and inexperienced collection and assign players alternately to each of the 3 teams

//Create empty collections for each team
var teamSharks: [[String:String]] = []
var teamDragons: [[String:String]] = []
var teamRaptors: [[String:String]] = []

//Fill the teams by the experienced players
for experiencePlayer in experiencedPlayers{
    if teamSharks.count < 3 {
        teamSharks.append(experiencePlayer)
    } else if teamDragons.count < 3 {
        teamDragons.append(experiencePlayer)
    } else {
        teamRaptors.append(experiencePlayer)
    }
}

//Fill the teams by the inexperienced players
for inexperiencePlayer in inexperiencedPlayers{
    if teamSharks.count < 6 {
        teamSharks.append(inexperiencePlayer)
    } else if teamDragons.count < 6 {
        teamDragons.append(inexperiencePlayer)
    } else {
        teamRaptors.append(inexperiencePlayer)
    }
}

//Prints a personalized letter to each of the guardians specifying: the player’s name, guardian names, team name, and date/time of their first team practice

//Create an empty collection to hold all the letters
var letters: [String] = []

//Print the letters for each team
print("Letters for Shark Team")
for teamMember in teamSharks{
    let letter = "Dear, \(teamMember["guardian"]!)! Please be informed that your young soccer star \(teamMember["name"]!) was included to Sharks Team and should attend the first practice workout on March 17, 3pm"
    letters.append(letter)
    print("-----------")
    print(letter)
}
print("+++++++++++")
print("+++++++++++")
print("Letters for Dragons Team")
for teamMember in teamDragons{
    let letter = "Dear, \(teamMember["guardian"]!)! Please be informed that your young soccer star \(teamMember["name"]!) was included to Dragons Team and should attend the first practice workout on March 17, 1pm"
    letters.append(letter)
    print("-----------")
    print(letter)
}
print("+++++++++++")
print("+++++++++++")
print("Letters for Raptors Team")
for teamMember in teamRaptors{
    let letter = "Dear, \(teamMember["guardian"]!)! Please be informed that your young soccer star \(teamMember["name"]!) was included to Raptors Team and should attend the first practice workout on March 18, 1pm"
    letters.append(letter)
    print("-----------")
    print(letter)
}

