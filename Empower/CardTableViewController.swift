//
//  CardTableViewController.swift
//  Empower
//
//  Created by Nandini  on 8/2/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit

class CardTableViewController: UITableViewController {
    
    // MARK: Properties
    var cards = [Card]() //declares a property on this class and initializes it w/ default val - empty array of Card objects
                        //by making cards a variable instead of constant, you make the array mutable - can add items after you initialize it

    var categoryName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the top of screen to show what category we're in
        navigationItem.title = categoryName
        
        //load the data
        loadCards()
    }
    
    func loadCards() {
        
        //switch based on category name
        switch categoryName {
            case "Computer Science":
                
                let photo1 = UIImage(named: "CS1")!
                let subfield1 = "WEB DEVELOPMENT"
                let text1 = "cs1"
                let card1 = Card(name: "Sarah Clatterbuck", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "CS2")!
                let subfield2 = "MACHINE LEARNING"
                let text2 = "cs2"
                let card2 = Card(name: "Divya Jain", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "CS3")!
                let subfield3 = "SYSTEMS"
                let text3 = "cs3"
                let card3 = Card(name: "Angie Byron", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "CS4")!
                let subfield4 = "APPLICATION"
                let text4 = "cs4"
                let card4 = Card(name: "Avni Shah", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "CS5")!
                let subfield5 = "MOBILE DEVELOPMENT"
                let text5 = "cs5"
                let card5 = Card(name: "Amanda Wixted", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "CS6")!
                let subfield6 = "INTERNET OF THINGS"
                let text6 = "cs6"
                let card6 = Card(name: "Alicia Perez", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Engineering":
                
                let photo1 = UIImage(named: "Eng1")!
                let subfield1 = "MECHANICAL ENGINEERING"
                let text1 = "Eng1"
                let card1 = Card(name: "Erin Brooks", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Eng2")!
                let subfield2 = "CIVIL ENGINEERING"
                let text2 = "Eng2"
                let card2 = Card(name: "Roma Agrawal", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Eng3")!
                let subfield3 = "ELECTRICAL ENGINEERING"
                let text3 = "Eng3"
                let card3 = Card(name: "Chen-Nee Chuah", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Eng4")!
                let subfield4 = "AEROSPACE ENGINEERING"
                let text4 = "Eng4"
                let card4 = Card(name: "Sabrina Thompson", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "Eng5")!
                let subfield5 = "BIOMEDICAL ENGINEERING"
                let text5 = "Eng5"
                let card5 = Card(name: "Propa Ghosh", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "Eng6")!
                let subfield6 = "CHEMICAL ENGINEERING"
                let text6 = "Eng6"
                let card6 = Card(name: "Roxann Laird", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Math":

                let photo1 = UIImage(named: "Math1")!
                let subfield1 = "THEORETICAL MATH"
                let text1 = "MATHEMATICIAN\n\n\"I don't have any particular recipe. It is the reason why doing research is challenging as well as attractive. It is like being lost in a jungle and trying to use all the knowledge that you can gather to come up with some new tricks, and with some luck you might find a way out...It is fun – it's like solving a puzzle or connecting the dots in a detective case.\"\n\nIn 2014, Maryam Mizakhani became the first woman to receive the highest honor in the field of Mathematics, the Fields Medal, known as the \"Nobel Prize of Mathematics.\" But, it was not without years of dedication and ability to interpret the most complex and difficult problems with creativity and determination. Her beginning work focused on calculating the volume of hyperbolic surfaces, a problem that confused mathematicians for years. Her original and innovative approaches to geometrical problems as well as her understanding of diverse types of mathematics allowed her to become highly recognized in her field. Maryam\'s work has transformed not only the field of mathematics, but has a vast impact on physics and engineering as well!\n\nEducation:\nPh.D. Mathematics (Harvard)\nB.S. Mathematics (Sharif University of Technology)\n\nLearn more of Maryam\'s journey:\nhttp://news.stanford.edu/news/2014/august/fields-medal-mirzakhani-081214.html"
                let card1 = Card(name: "Maryam Mirzakhani", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Math2")!
                let subfield2 = "MATHEMATICAL MODELING"
                let text2 = "COMPUTATIONAL ASTRONOMER\n\n\"Nothing is more beautiful than a star or galaxy. If I could travel out there and find the answers, I would.In order to confirm the detection of gravitational waves, scientists need models for the anticipated gravitational waves coming from space.\"\n\nManuela Campanelli integrates mathematics and simulations to better understand the complexity of galaxies and the universe. As the Director of the Center for Computational Relativity and Gravitation at Rochester Institute of Technology, Manuela uses math to model real life motions of black holes and gravitational waves. She is renowned for her groundbreaking work in modeling a black hole evolving, orbiting, and colliding. In her research, she continually pushes the barriers for what mathematical modeling can explain, as her work looks at proving Einstein’s theory of general relativity using complex mathematical equations!\n\nEducation:\nPh.D. Theoretical Physics (University of Bern)\nB.S. Applied Mathematics (University of Perugia)\n\nRead about the incredible work that Manuela leads:\nhttps://www.rit.edu/showcase/index.php?id=66"
                let card2 = Card(name: "Manuela Campanelli", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Math3")!
                let subfield3 = "DATA SCIENCE"
                let text3 = "PREDICTIVE DATA SCIENTIST\n\n\"It\'s not just a technical field..It\'s extremely creative because you\'re thinking about how data might fit together, you\'re thinking about how you might create different signals from the data...Hopefully it means that the product is getting better and better for you and that...[i]t\'s helping us get content into the service that you will really enjoy.\"\n\nAs the Vice President of Science and Algorithms at Netflix, Caitlin Smallwood leads an advanced group of data scientists to develop insights on how to better improve the product. Using data and algorithm research, Caitlin and her team develop predictive modeling techniques to evaluate and analyze different changes to the product. Her work tackles interesting challenges like Netflix recommendation ability, movie/TV show demand, and marketing techniques. Her work helps create the overall design of the product and based on in depth data analysis, makes sure it\'s the best for users like you!\n\nEducation:\nM.S. Operations Research (Stanford University)\nB.S. Mathematics (College of William and Mary)\n\nWatch Caitlin talk about the role of data science at Netflix:\nhttps://www.youtube.com/watch?v=xOriwLUcTAg"
                let card3 = Card(name: "Caitlin Smallwood", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Math4")!
                let subfield4 = "STATISTICS"
                let text4 = "Math4"
                let card4 = Card(name: "Lisa LaVange", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                cards += [card1, card2, card3, card4];
            
            case "Medicine":
            
                let photo1 = UIImage(named: "Med1")!
                let subfield1 = "CARDIAC SURGERY"
                let text1 = "Med1"
                let card1 = Card(name: "Kathy Magliato", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Med2")!
                let subfield2 = "SPORTS MEDICINE"
                let text2 = "Med2"
                let card2 = Card(name: "Leigh Curl", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Med3")!
                let subfield3 = "RESEARCH"
                let text3 = "Med3"
                let card3 = Card(name: "Patricia Bath", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Med4")!
                let subfield4 = "PEDIATRIC CANCER"
                let text4 = "Med4"
                let card4 = Card(name: "Allison Martin", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "Med5")!
                let subfield5 = "PUBLIC HEALTH"
                let text5 = "Med5"
                let card5 = Card(name: "Susan Blumenthal", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "Med6")!
                let subfield6 = "MEDICAL IMAGING"
                let text6 = "Med6"
                let card6 = Card(name: "Anna Wu", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Science":
                
                let photo1 = UIImage(named: "Sci1")!
                let subfield1 = "CHEMISTRY"
                let text1 = "DISCOVERY CHEMIST\n\n\"My field of computational modeling may not always produce the correct answers, but it provides hypotheses which lead to new designs. Being able to apply this field in project-team settings with a common goal of delivering molecules for unmet needs is a wonderful opportunity.\"\n\nThink about all the people in the world with devastating diseases and conditions that rely on medication. Vickie and her team work directly in developing these new drugs to solve the world\'s toughest medical needs. As a Senior Scientist in Discovery Chemistry at Genentech, a leading biopharmaceutical company, Vickie uses computational chemistry, a branch of chemistry that utilizes computer simulations, to guide the design and discovery of small molecule drugs. Her innovative early-stage research has the potential to identify drugs to treat breast cancer!\n\nEducation:\nPh.D. Macromolecular and Cellular Structure and Chemistry (The Scripps Research Institute)\nB.S. Chemistry (Yale)\n\nCheck out some of Vickie\'s noteworthy publications:\nhttp://www.gene.com/scientists/our-scientists/vickie-tsui"
                let card1 = Card(name: "Vickie Tsui", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Sci2")!
                let subfield2 = "BIOLOGY"
                let text2 = "DISEASE GENETICIST\n\n\"The impact that science has on the world around us is something I\'m enthralled with...I love the invention and the creation of research...it\'s all a creative process, and I think that\'s how I became interested in music, too. What links music and science for me is that they\'re two different kinds of invention.\"\n\nPardis Sabeti tackles the most infectious diseases in the world and is on the front lines when an outbreak strikes, ultimately saving lives and leading researchers to new vaccines. Her most recent case was sequencing the viral genome of Ebola, an extremely deadly disease that recently had an outbreak in West Africa, and studying how the disease was transmitted. Her experience in scanning the entire human genome at the Broad Institute, a prestigious biomedical and genomic research center, is applied to her dedication in understanding the pathogens that cause diseases like malaria and tuberculosis.\n\nEducation:\nM.D. Medicine (Harvard Medical School)\nPh.D. Biological Anthropology (University of Oxford)\nB.S. Biology (MIT)\n\nCheck out Pardis\' feature for TIME 100 Most Influential People:\nhttp://time.com/3822958/pardis-sabeti-2015-time-100/"
                let card2 = Card(name: "Pardis Sabeti", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Sci3")!
                let subfield3 = "PHYSICS"
                let text3 = "PARTICLE PHYSICIST\n\n\"If you want to understand the field conceptually, it\'s almost child\'s play. All children are natural scientists. They are curious, and they want to take things apart to see how they work...We study the fundamental building blocks of matter from which everything is made, and the forces at work between them. And the equations that describe the building blocks and their interactions are simple and elegant.\"\n\nFabiola fell in love with arts and philosophy at a young age because she loved asking big question, but physics became her true passion by providing big answers. Aside from being named among the Top 100 most influential women by Guardian and Forbes Magazine, in January 2016, Fabiola became the first female Director-General of CERN, a top global research organization that operates the Large Hadron Collider (LHC), the world\'s biggest particle collider. As the most powerful accelerator, the LHC smashes atoms together at almost the speed of light to ultimately understand the universe on a tiny scale. Previously, she headed ATLAS, a team of more than 3,000 scientists that discovered the Higgs Boson, a basic particle that helps to understand the creation of mass in the universe!\n\nEducation:\n\nPh.D. Experimental Particle Physics (University of Milan)\n\nCheck out  Fabiola\'s feature in Forbes:\nhttp://www.forbes.com/profile/fabiola-gianotti/"
                let card3 = Card(name: "Fabiola Gianotti", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Sci4")!
                let subfield4 = "ENVIRONMENTAL SCIENCE"
                let text4 = "CORAL REEF BIOLOGIST\n\n\"Most of the Caribbean\'s coral reefs are in bad shape, victims of overfishing, sewage and fertilizer pollution, disease, rising temperatures, and reckless coastal development. But corals are deeply important for humans everywhere, not least because they are a source of food, they protect shorelines, generate tourism revenue — and provide chemical diversity through which scientists are discovering new medicines...that\'s why [we] are focused on understanding how corals reproduce, and studying what we might do to help young corals build us the reefs of the future.\"\n\nKristen Marhaver works directly in combating the extensive damage against coral reefs due to pollution, overfishing, and a changing climate. As a scuba diver from the age of 15 and spending over 1,000 hours underwater, she grew up with a love of marine biology. Based in the Caribbean, Kristen and her colleagues study the habitat preferences, reproduction, and behavior of reef corals in an attempt to construct and restore the proper environment for growth. Her work in investigating the biodiversity of the coral reefs will allow scientists to better protect the very important as well as beautiful coral reefs! In fact, her team has been able to reintroduce lab-raised corals and breed them successfully in the Caribbean!\n\nEducation:\nPh.D. Marine Biology (Scripps Institute of Oceanography, UCSD)\nB.S. Applied Biology (Georgia Institute of Technology)\n\nRead about the unbelievable way Kristen is restoring our coral habitat:\nhttp://ideas.ted.com/a-day-in-the-life-of-baby-coral/"
                let card4 = Card(name: "Kristen Marhaver", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "Sci5")!
                let subfield5 = "NEUROSCIENCE"
                let text5 = "BEHAVIORAL NEUROSCIENTIST\n\n\"Understanding the human brain is a great and complex problem. To solve the brain\'s mysteries, you often have to break a problem down to a simpler form...We want to see the interconnected nerves that give rise to thoughts, actions, and emotions.\"\n\nCori Bargman has never been known to shy away from the complex. Tackling the most difficult questions and part of the body, the brain, Cori\'s lab at Rockefeller University focuses on the role of individual genes in brain development and function. Broadening our understanding of the human brain, her work uses the roundworm C. elegans as a model to map neural circuits and to investigate the role of individual genes on behavior. In fact, President Obama named her co-chair to the Brain Research Advancing Innovative Neurotechnologies Initiative, an endeavour that investigates the causes of brain conditions such as Alzheimer\'s, autism, and depression by understanding the connections between brain function and behavior.\n\nEducation:\nPh.D. Cancer Biology (MIT)\nB.S. Biochemistry (University of Georgia)\n\nRead about the amazing research at Cori\'s lab:\nhttp://www.rockefeller.edu/research/faculty/labheads/CoriBargmann/\u{23}content"
                let card5 = Card(name: "Cori Bargmann", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "Sci6")!
                let subfield6 = "ASTRONOMY"
                let text6 = "GALAXY ASTRONOMER\n\n\"...I\'m studying the evolution of massive stars a billion light years away...I like reminding people that \"silly\" questions are often the starting point for great science, and it\'s always fun to ignite some enthusiasm and curiosity in people about astronomy and how our universe works.\"\n\nEmily Levesque has a passion for the unknown and the unseen, discovering the mysteries behind our universe!  Listed as one of Business Insider\'s 50 Groundbreaking Scientists, Emily, along with her collaborators, discovered the three largest stars known in the universe! Using multi-wavelength observations and theoretical models from star-forming galaxies, her work pushes the frontiers of our understanding of galaxies. Her research at University of Washington focuses on understanding massive stars and using these stars to investigate galaxy formation, shedding light on the universe around us.\n\nEducation:\nPh.D. Astronomy (University of Hawaii)\nB.S. Physics (MIT)\n\nCheck out more of Emily\'s incredible research:\nhttp://www.emlevesque.com/research/"
                let card6 = Card(name: "Emily Levesque", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Technical Management":
                
                let photo1 = UIImage(named: "TM1")!
                let subfield1 = "ENTERPRISE TECHNOLOGY"
                let text1 = "TM1"
                let card1 = Card(name: "Susan O'Day", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "TM2")!
                let subfield2 = "INFORMATION TECHNOLOGY"
                let text2 = "TM2"
                let card2 = Card(name: "Michele Kang", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "TM3")!
                let subfield3 = "ENGINEERING MANAGEMENT"
                let text3 = "TM3"
                let card3 = Card(name: "Dona Sarkar", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "TM4")!
                let subfield4 = "PRODUCT MANAGEMENT"
                let text4 = "TM4"
                let card4 = Card(name: "April Underwood", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "TM5")!
                let subfield5 = "DIGITAL DESIGN"
                let text5 = "TM5"
                let card5 = Card(name: "Eva-Lotta Lam", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "TM6")!
                let subfield6 = "NONPROFIT ENTREPRENUER"
                let text6 = "TM6"
                let card6 = Card(name: "Leila Janah", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            default:
                fatalError("Invalid Category Name")
            
        }
        
        /*
        let photo1 = UIImage(named: "Alloy")!
        let card1 = Card(name: "Chemist 1", photo: photo1)!
        
        let photo2 = UIImage(named: "Doctor")!
        let card2 = Card(name: "Chemist 2", photo: photo2)!
        
        let photo3 = UIImage(named: "Office")!
        let card3 = Card(name: "Chemist 3", photo: photo3)!
        
        cards += [card1, card2, card3];
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier
        let cellIdentifier = "CardTableViewCell"
        
        //let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CardTableViewCell
        
        // Fetches the appropriate card for the data source layout
        let card = cards[indexPath.row]
        
        cell.nameLabel.text = card.name
        cell.photoImageView.image = card.photo
        cell.subfieldLabel.text = card.subfield

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cardDetailViewController = segue.destinationViewController as! CardViewController //downcasts destination view controller to a CardViewController - forced type cast - if unsuccessful, app will crash
        
        if let selectedCardCell = sender as? CardTableViewCell { //tries to downcast sender to a CardCell - if unsucessful, this if stmt isn't executed
            
            //fetches the Card object corresponding to the selected cell in table view
            let indexPath = tableView.indexPathForCell(selectedCardCell)!
            let selectedCard = cards[indexPath.row]
            
            //assigns Card object to the card property of the destination view controller, an instance of CardViewController
            cardDetailViewController.card = selectedCard
            
        }
    }

}
