import UIKit

//intentions: create a Facebook profile class that takes in different properties each time the user creates a Facebook profile

class FacebookProfile{
    //section 1. class attributes
    //these are going to be the initializers
    //these will change each time we decide to create a new Facebook
    var profileName : String
    var profileAge : Int
    var profileBio : String
    var profileSchool : String
    var profileFriendsList : [String]
    var profileBirthday : String
    var relationshipStatus : String
    var profileJob : String
    var friendsBirthdaysList : [String]

    
    //section 1.5. class constants
    //the relationship statuses here will never, ever change
    //the let keyword keeps it from changing
    let relationshipStatus1 = "In a relationship" //represent this with number one
    let relationshipStatus2 = "Single" //represent this with number two
    let relationshipStatus3 = "It's complicated..." //represent this with number three
    let relationshipStatus4 = "Married" //represent this with number four
    
    //create an initializer that will take in each user's information
    init () {
        profileName = "New User"
        profileAge = 0 //maybe this is a design flaw that we may want to fix later on
        profileBio = "This is a profile"
        profileSchool = ""
        profileFriendsList = [String]()
        //code a special function for friendslist
        profileBirthday = ""
        relationshipStatus = relationshipStatus3 //another design flaw that it will always default to it's complicated
        //for relationship status - code a function for this to work
        profileJob = ""
        friendsBirthdaysList = [String]()
    }
    
    //section 2. functions that will support our Facebook profile
    //create a function that sets a profile's name by taking in an argument
    //this serves as a "setting function" - essentially setting Facebook profile name
    func setProfileName(userName : String){
        profileName = userName
    }
    
    func setProfileBirthday(birthday: String){
        profileBirthday = birthday
    }
    
    func checkEverything() {
        print(profileName)
        print(profileFriendsList)
        print("Here are my friend's birthdays: \(friendsBirthdaysList)")
    }
        //when the user accepts the friend request, both names are added to each profile
    func profileFriendsList(requester: FacebookProfile, accepter: FacebookProfile){
        //access profile names here:
        var newFriend = requester.profileName
        var newFriend2 = accepter.profileName
        
        //add profile names to facebook account:
        accepter.profileFriendsList.append(newFriend)
        requester.profileFriendsList.append(newFriend2)
    }
    
    // function that adds another user's birthday to your account
    func addFriendBirthday(friend1: FacebookProfile, friend2: FacebookProfile){
        //access friend's birthday
        var friendsBirthdays = friend1.profileBirthday
        var friendsBirthdays2 = friend2.profileBirthday
        
        //add birthday to account
        friend1.friendsBirthdaysList.append(friendsBirthdays2)
        friend2.friendsBirthdaysList.append(friendsBirthdays)
    }

    
}

    //creating an object from our Facebook profile class here:
    var aileensFacebook = FacebookProfile()
    var diannasFacebook = FacebookProfile()
    var brisasFacebook = FacebookProfile()
    var jaquisFacebook = FacebookProfile()
    var dayisFacebook = FacebookProfile()

//to modify aileens facebook, call upon the object created here:
//to use function in  class, use period behind the object name and write function name - ex. i want to set a profile name, so i use .setProfileName (calls upon the func setProfileName)

    aileensFacebook.setProfileName(userName: "Aileen Castro")
    aileensFacebook.setProfileBirthday(birthday: "April 16")

    diannasFacebook.setProfileName(userName: "Dianna Magana")
    diannasFacebook.setProfileBirthday(birthday: "November 2")

    brisasFacebook.setProfileName(userName: "Brisa Magana")

    jaquisFacebook.setProfileName(userName: "Jaqui Marquez")

    dayisFacebook.setProfileName(userName: "Dayis Sedano")

    aileensFacebook.profileFriendsList(requester: diannasFacebook, accepter: aileensFacebook)
    aileensFacebook.profileFriendsList(requester: brisasFacebook, accepter: aileensFacebook)

    aileensFacebook.addFriendBirthday(friend1: diannasFacebook, friend2: aileensFacebook)

    aileensFacebook.checkEverything()
    diannasFacebook.checkEverything()
    brisasFacebook.checkEverything()



/////////////////////////////////////////////////////////////

//CHALLENGE: Create a function that removes friends! ^




