//
//  SongsTableViewController.swift
//  DisplayLyricProgram
//
//  Created by Ashutosh on 9/20/17.
//  Copyright © 2017 Ashutosh. All rights reserved.
//

import UIKit

class SongsTableViewController: UITableViewController {
    
    private var lilUziLyrics = "Are you alright? \nI'm alright, I'm quite alright \nAnd my money's right \n8, yeah \nCountin' them bands all way to the top, 'til they be fallin' over \nCountin' them bands on my way to the top, 'til we fallin' over \nI don't really care if you cry \nOn the real you should've never lied \nShould've saw the way she looked me in my eyes \nShe said, \"Baby, I am not afraid to die.\" \nPush me to the edge \nAll my friends are dead \nPush me to the edge \nAll my friends are dead \nPush me to the edge \nAll my friends are dead \nPush me to the edge \n\nPhantom that's all red \nInside all white \nLike something you ride a sled down \nI just want that head \nMy Brittany got mad \nI'm barely her man now \nEverybody got the same swag now \nWatch the way that I trap now \nStacking my bands all the way to the top \nAll the way 'til my bands fallin' over \nEvery time that you leave your spot \nYour girlfriend call me like \"Come on over\" \nI like the way that she treat me \nGon' leave you, won't leave me \nI call it that Casanova \nShe said I'm insane now \nI might blow my brain out \nXanny numb the pain out \nPlease, Xanny make it go away \nI'm committed, not addicted but it keep controlling me \nAll that pain, now I can't feel it, I swear that it's slowing me, yeah \nI don't really care if you cry \nOn the real, you should've never lied \nSaw the way she looked me in my eyes \nShe said, \"I am not afraid to die.\" \nAll my friends are dead \nPush me to the edge \nAll my friends are dead \nPush me to the edge \nAll my friends are dead, yeah \nAll my friends are dead, yeah \nThat is not your swag I swear you fakin' \nYeah, these niggas wanna take my cadence \nRain on 'em, thunderstorm, rain on 'em \nMedicine, little nigga take some \nFast car, Nascar, race 'em \nIn the club they got no ones, then we were baked now \nClothes from overseas \nGot the racks and they all C-Notes \nYou is not a G, oh \nLooking at you stackin' all your money, it all green though \nI was counting that and you got twenties, that's a G-roll \n\nShe said, \"You're the worst, you're the worst.\" \nI cannot die because this my universe \n\nI don't really care if you cry \nOn the real, you should've never lied \nShould've saw the way she looked me in my eyes \nShe said, \"Baby, I am not afraid to die.\" \nPush me to the edge \nAll my friends are dead \nPush me to the edge \nAll my friends are dead \nPush me to the edge \nAll my friends are dead \nPush me to the edge"
    
    var selectedSection = 0
    
    var selectedRow = 0
    
    private var jColeLyrics = "Since a youngin' always dreamed of gettin' rich \nLook at me my nigga \nFantasize about a white picket fence \nWith some trees my nigga \nUsed to want a pathfinder with some tints \nThat's all I need my nigga \nThrow some 20's on that bitch and get it rinsed \nBut now I see my nigga \nThat the worlds a lot bigger ever since \nPicked up the paper and they say my nigga Eddie caught a body, I'm convinced \nAnybody is a killer, all you gotta do is push 'em to the limps \nFuck being timid in the Civic \nPoliticin' with the pushers and the pimps \nI'm tryna write a story, can I get a glimpse? \nYeah can I get a glimpse? \n\nLast night I had a bad dream \nThat I was trapped in this city \nThen I asked is that really such a bad thing? \nThey robbin' niggas on the daily \nCan you blame a nigga that ain't never had things? \nGuess not, last night they pulled up on my nigga at the light like \nUh, nice watch, run it \nHands in the air now, hands in the air, run it \nHands in the air now, hands in the air, run it \nHands in the air now, hands in the air \nHands in the air now, hands in the air \nSmall town nigga Hollywood dreams \nI know that everything that glitters ain't gold \nI know that shit ain't always good as it seems \nBut tell me till you get it how could you know \nHow could you know? How could you know? \n\nListen up I'm about to go and get rich \nFuck with me my nigga \nWe gon' circle around the Ville and hit a lick \nCop some tree my nigga \nAnd some powder, bag it up and make it flip \nYou gon' see my nigga \nOne day we gon' graduate and cop a brick \nAnd that's the key my nigga \nListen up I'm bout to go and get rich \nStand back and watch if you want to nigga \nMe I want my pockets fat, a badder bitch \nTired of seein' niggas flaunt, I wanna flaunt too nigga \nWatch some rollers in the fuckin' Crown Vic \nTryna lock a nigga up, that's what they won't do nigga \nWanna know a funny thing about this shit? \nEven if you let em' kill your dream it'll haunt you nigga \n\nLast night I had a bad dream \nThat I was trapped in this city \nThen I asked is that really such a bad thing? \nI look around like do you wanna be another nigga, that ain't never had things? \nGuess not, last night we pulled up on a nigga at the light like \nUh, nice watch, run it \nHands in the air now, hands in the air, run it \nHands in the air now, hands in the air, run it \nHands in the air now, hands in the air \nHands in the air now, hands in the air \nFather forgive me for my childish ways \nI look outside and all the clouds are gray \nI need your hands to take me, miles away \nYour wish is my command, my command, my command, but \nBefore you go I've got to, warn you now \nWhatever goes up surely, must come down \nYou get your piece but no peace, won't be found \nSo why just take me man, take me man, take me man \nYour wish is my command, my command, my command"
    
    private var kLamarLyrics = "[Sing About Me]\n\n[Intro:] \nWhen the lights shut off \nAnd it's my turn to settle down \nMy main concern \nPromise that you will sing about me \nPromise that you will sing about me \n\nI said when the lights shut off \nAnd it's my turn to settle down \nMy main concern \nPromise that you will sing about me \nPromise that you will sing about me \n\n[Verse 1:] \nI woke up this morning and figured I'd call you \nIn case I'm not here tomorrow \nI'm hoping that I can borrow a piece of mind \nI'm behind on what's really important \nMy mind is really distorted \nI find nothing but trouble in my life \nI'm fortunate you believe in a dream \nThis orphanage we call a ghetto is quite a routine \nAnd last night was just another distraction \nOr a reaction of what we consider madness \nI know exactly what happened \nYou ran outside when you heard my brother cry for help \nHeld him like a newborn baby and made him feel \nLike everything was alright \nAnd a fight he tried to put up, but the type \nOf bullet that stuck had went against his will \nAs blood spilled on your hands \nMy plans rather vindictive \nEverybody's a victim in my eyes \nWhen I ride it's a murderous rhythm \nAnd outside became pitch black \nA demon glued to my back whispering, \"Get em\" \nI got em, and I ain't give a fuck \nThat same mentality I told my brother not to duck \nIn actuality it's a trip how we trip off of colors \nI wonder if I'll ever discover \nA passion like you and recover \nThe life that I knew as a young'n \nIn pajamas and Dun-ta-duns \nWhen thunder comes it rains cats and dogs \nDumb niggas like me never prosper \nPrognosis of a problem child \nI'm proud and well devoted \nThis piru shit been in me forever \nSo forever I'm a push it, wherever whenever \nAnd I love you cause you love my brother like you did \nJust promise me you'll tell this story when you make it big \nAnd if I die before your album drop I hope - \n\n[Hook:] \nPromise that you will sing about me \nPromise that you will sing about me \n\nI said when the lights shut off \nAnd it's my turn to settle down \nMy main concern \nPromise that you will sing about me \nPromise that you will sing about me \n\n[Verse 2:] \nYou wrote a song about my sister on your tape \nAnd called it section.80, the message resemble Brenda's Got a Baby \nWhat's crazy was, I was hearin about it \nBut doubted your ignorance, how could you ever \nJust put her on blast and shit \nJudging her past and shit \nWell it's completely my future \nA nigga behind me right now asking for ass and shit \nAnd I'm a need that 40 dollars even if I gotta \nFuck, suck and swallow in the parking lot \nGonzales Park, I'm followed by a married man, a father of three \nMy titties bounce on the cadence of his tingling keys \nMatter of fact he my favorite cause he tip me with E's \nHe got a cousin named David and I seen him last week \nThis is the life of another girl damaged by the system \nThese foster homes, I run away and never do miss em \nSee, my hormones just run away and if I can get em back \nTo where they used to be then I'll probably be in the denim \nOf a family gene that show women how to be woman, or better yet a leader \nYou need her to learn something, then you probably need to beat her \nThat's how I was taught \nThree niggas in one room, first time I was tossed \nAnd I'm exhausted \nBut fuck that \"Sorry for your loss shit\" \nMy sister died in vain, but what point are you trying to gain \nIf you can't fit the pumps I walk in? \nI'll wait \nYour rebuttal a little too late \nAnd if you have a album date, just make sure I'm not in the song \nCause I don't need the attention bring enough of that on my own \nAnd matter fact did I mention that I physically feel great? \nA doctor's approval is a waste of time, I know I'm straight \nI'll probably live longer than you and never fade away \nI'll never fade away, I'll never fade away \nI know my fate, and I'm on the grind for this cake \nI'm a get or die trying, I'm eyeing every male gender with intentions of buying \nYou lying to these motherfuckers, talking about you can help with my story \nYou can help me if you sell this pussy for me, nigga \nDon't ignore me nigga, fuck your glory nigga, this bullshit... \n\n[Hook:] \nWhen the lights shut off \nAnd it's my turn to settle down \nMy main concern \nPromise that you will sing about me \nPromise that you will sing about me \n\nI said when the lights shut off \nAnd it's my turn to settle down \nMy main concern \nPromise that you will sing about me \nPromise that you will sing about me \n\n[Verse 3:] \nSometimes I look in a mirror and ask myself \nAm I really scared of passing away \nIf it's today I hope I hear a \nCry out from heaven so loud it can water down a demon \nWith the holy ghost till it drown in the blood of Jesus \nI wrote some raps that make sure that my lifeline \nRake in the cent of a reaper, ensuring that my allegiance \nWith the other side may come soon \nAnd if I'm doomed, may the wound \nHelp me mother be blessed for many moons \nI suffer a lot \nAnd every day the glass mirror get tougher to watch \nI tie my stomach in knots \nAnd I'm sure not why I'm infatuated with death \nMy imagination is surely an aggravation of threats \nThat can come about \nCause the tongue is mighty powerful \nAnd I can name a list of your favorites that probably vouch \nMaybe cause I'm dreamer and sleep is the cousin of death \nReally stuck in the scheme of, wondering when I'm a rest \nAnd you're right, your brother was a brother to me \nAnd your sister's situation was the one that put me \nIn a direction to speak of something that's realer than the TV screen \nBy any means, wasn't trying to offend or come between \nHer personal life, I was like \"it need to be told \nCursing the life of 20 generations after her soul\" \nExactly would have happened if I hadn't continued rappin \nOr steady being distracted by money drugs and four \nFives, I count lives all on these songs \nLook at the weak and cry, pray one day you'll be strong \nFighting for your rights, even when you're wrong \nAnd hope that at least one of you sing about me when I'm gone \nNow am I worth it? \nDid I put enough work in? \n\n[Hook:] \nPromise that you will sing about me \nPromise that you will sing about me \n\nI said when the lights shut off \nAnd it's my turn to settle down \nMy main concern \nPromise that you will sing about me \nPromise that you will sing about me \n\n[Skit] \n\n[I'm Dying of Thirst] \n\nTired of running \nTired of hunting \nMy own kind \nBut retiring nothing \nTires are steady screeching, the driver is rubbing \nHands on the wheel, who said we wasn't? \nDying of thirst \nDying of thirst \nDying of thirst \n\nDope on the corner \nLook at the coroner \nDaughter is dead \nMother is mourning her \nStrayed bullets, AK bullets \nResuscitation was waiting patiently \nBut they couldn't, bring her back \nWho got the footage? channel 9 \nCameras looking, it's hard to channel your energy \nWhen you know you're crooked \nBanana clip split his banana pudding \nI'm like Tre, that's Cuba Gooding \nI know I'm good at \nDying of thirst \nDying of thirst \nDying of thirst \n\nHow many sins? \nI'm running out \nHow many sins? \nI lost count \nDreams of ballin like Spalding \nBut only shotty bounce \nThe reaper calling \nI'm cottonmouth \nMoney is power, yours is ours \nLay with a snitch, die with a coward \nHope we get rich, hope we can tower \nOver the city with vanity with the music louder \nThe same song \nA black flower \nI'll show you how to \nDye your thirst \nDye your thirst \nDye your thirst \n\nWhat are we doing? \nWho are we fooling? \nHell is hot, fire is proven \nTo burn for eternity, return of the student \nThat never learned how to live righteous but how to shoot it \nTired of running, choirs is humming \nTell us to visit, we lying about coming \nNow back to business, loading the guns in \nBack of the Buick, your hood is feuding \nAnd the beef is bubbling \nIt's no discussion, hereditary \nAll of my cousins \nDying of thirst \nDying of thirst \nDying of thirst \n\nToo many sins \nI'm running out \nSomebody send \nMe a well for the drought \nSee, all I know, is taking notes \nOn taking this life for granted \nGranted, if he provoke \nMy best days, I stress days (Lord forgive me for all my sins for I not know...) \nMy best days, I stress days \nSay \"Fuck the world, \" my sex slave \nMoney, pussy and greed what's my next crave \nWhatever it is, know it's my next grave \nTired of running, tired of running \nI'm tired of tumbling, tired of running \nI'm tired of tumbling \nBackwards my mama say \n\"See a pastor, give me a promise \nWhat if today was the rapture, and you completely tarnished \nThe truth will set you free, so to me be completely honest \nYou dying of thirst \nYou dying of thirst \nSo hop in that water, and pray that it works\" \n[Skit/Outro]"
    
    var shownSongs = [LyricModel]()
    
    private var searchedSongs = [LyricModel]()

    private var songList = [Array<LyricModel>]()
    
    var searchText: String? {
        didSet { 
            songList.removeAll()
            tableView.reloadData()
            title = searchText
        }
    }
    
    private func loadSampleSongs() {
        var tempSongList = [LyricModel]()
        let lilUzi = LyricModel(name: "XO Tour Llif3", artist: "Lil Uzi Vert", lyrics: lilUziLyrics, url: URL(string: "http://thefader-res.cloudinary.com/private_images/w_640,c_limit,f_auto,q_auto:eco/Screen_Shot_2017-08-24_at_11.55.48_AM_bulwhv/lil-uzi-vert-luv-is-rage-2-release-date-album-cover.jpg"))
        tempSongList.append(lilUzi)
        let jCole = LyricModel(name: "A Tale of 2 Citiez", artist: "J. Cole", lyrics: jColeLyrics, url: URL(string: "https://target.scene7.com/is/image/Target/17047837_Alt01?wid=520&hei=520&fmt=pjpeg"))
        tempSongList.append(jCole)
        let kLamar = LyricModel(name: "Sing About Me, I'm Dying Of Thirst", artist: "Kendrick Lamar", lyrics: kLamarLyrics, url: URL(string: "http://www.hotnewhiphop.com/public/userfiles/2012/09/kendrick-lamar-good-kid-maad-city.jpg"))
        tempSongList.append(kLamar)
        songList.insert(tempSongList, at: 0)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleSongs()
      /*
        let nib = UINib(nibName: <#T##String#>, bundle: <#T##Bundle?#>)
        tableView.register(nib, forCellReuseIdentifier: <#T##String#>)
 
 **/
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return songList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songList[section].count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSection = indexPath.section
        selectedRow = indexPath.row
        performSegue(withIdentifier: "submissionSegue", sender: nil)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifer = "ANewCell"

        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer, for: indexPath) as? SongTableViewCell else {
            fatalError("The dequeued cell is not an instance of SongTableViewCell.")
        }

        // Configure the cell...
        let song = songList[0][indexPath.row]
        cell.nameOfSong.text = song.songName
        cell.nameOfArtist.text = song.songArtist
        var image : UIImage?
        if let url = song.songImageURL {
            let urlContents = try? Data(contentsOf: url)
            if let imageData = urlContents {
                image = UIImage(data: imageData)
            }
        }
        cell.albumCover.image = image

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let destinationController = segue.destination as! LyricViewController
        destinationController.submittedSection = selectedSection
        destinationController.submittedRow = selectedRow
        destinationController.submittedSongList = songList
    
    }

}
