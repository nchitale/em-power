//
//  CardTableViewController.swift
//  Empower
//
//  Created by Nandini  on 8/2/16.
//  Copyright © 2016 Empower. All rights reserved.
//

import UIKit
import SafariServices

class CardTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var cards = [Card]()
    var categoryName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set the top of screen to show what category we're in
        navigationItem.title = categoryName
        
        // load the data
        loadCards()
    }
    
    // Loads list of women in a particular STEM field category.
    func loadCards() {
        
        // switch based on category name
        switch categoryName {
            case "Computer Science":
                let photo1 = UIImage(named: "CS1")!
                let subfield1 = "WEB DEVELOPMENT"
                
                let quote1: NSString = "WEB DEVELOPER\n\n\"I learned to acknowledge my accomplishments to myself first and then to acknowledge them with others. Instead of minimizing my efforts: \'I just wrote a tiny piece of Javascript for that\'; I can say \'Yes, I contributed a key part of that release.\'\"\n\nSarah Clatterbuck currently leads the web development team at LinkedIn, a huge business oriented social networking company. As LinkedIn\'s primary platform is its website, Sarah has a huge role to play in maintaining the website\'s main infrastructure, understanding the technical components that make it run, and improving its functionality. Leading an innovative cross functional team, Sarah also works on developing new technical initiatives for the company such as improving web accessibility for people with disabilities.\n\nEducation:\nM.S. Information Architecture and Systems Design (San Jose State University)\nB.S. Advertising (UCSF)\n\nCheck out this interview with Sarah:\nhttp://www.huffingtonpost.com/laura-dunn/women-in-business-qa-sara_b_7430278.html";

                let attributedText1: NSMutableAttributedString = NSMutableAttributedString(string: quote1 as String)
                attributedText1.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 14, length: 249))
                let text1 = attributedText1

                let card1 = Card(name: "Sarah Clatterbuck", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "CS2")!
                let subfield2 = "MACHINE LEARNING"
                let quote2 = "MACHINE LEARNING LEAD\n\n\"As I was learning more about it, I figured out you can be so much more with technology and you can reach out to people so much more if you\'re doing something in technology...Just because something works doesn\'t mean there isn\'t a better way to build it.\"\n\nIn 2013, Divya Jain became the Technical Leader of Machine Learning at Box, one of the most well-known cloud companies in the world, and was named one of the Business Insider\'s Top 22 Most Powerful Women Engineers in Tech in 2014. Early in her career, Divya looked into applying computer science in data analysis as big data, large data sets used to explore trends, was gaining popularity. She combined her experience of data analytics with her interest in machine learning, a subfield of computer science that allows computers to learn patterns without explicit programming. Using machine learning principles, her team worked on a project that could allow Box users to search and analyze the documents they put in Box.\n\nEducation:\nCertificate Data Mining and Analysis (Stanford)\nM.S. Computer Engineering (San Jose State University)\nB.S. Electrical Engineering (Aligarh University)\n\nRead more about Divya\'s amazing journey:\nhttp://www.techrepublic.com/article/divya-jain-machine-learning-maven-startup-founder-women-in-tech-advocate/"
                
                let attributedText2: NSMutableAttributedString = NSMutableAttributedString(string: quote2 as String)
                attributedText2.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 22, length: 256))
                let text2 = attributedText2

                let card2 = Card(name: "Divya Jain", photo: photo2, backgroundText: text2, subfield: subfield2)!

                let photo3 = UIImage(named: "CS3")!
                let subfield3 = "SYSTEMS ENGINEERING"
                let quote3 = "SYSTEMS ENGINEER\n\n\"What most excites me about open-source is the aspect of cooperation, it is very nice to be able to share with others what you have written...There are so many open source projects that need help. You can start by doing simple things...If you have a curiosity to find out how things work, will, and patience to devote to understanding the basics of programming, then you are already halfway there.\"\n\nElena Zannoni is the Director of Linux Tools and Languages team at Oracle, a leading technology corporation. Linux is an operating system, software that supports a computer\'s basic functions, that is comparable to Microsoft Windows, but is assembled under open-source development, software that is made freely available and can be modified. Her passion for open-source and extensive experience with other open-source projects led to her current role which involves supplying Oracle customers with proper Linux solutions and developing Linux documentation and curriculum.\n\nEducation:\nPh.D. Computer Science, Evolutionary Computation (Wayne State University)\nB.S. Computer Science (Nova Scotia Community College)"
                
                let attributedText3: NSMutableAttributedString = NSMutableAttributedString(string: quote3 as String)
                attributedText3.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 17, length: 399))
                let text3 = attributedText3

                let card3 = Card(name: "Elena Zannoni", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "CS4")!
                let subfield4 = "APPLICATION DEVELOPMENT"
                let quote4 = "SOFTWARE DEVELOPER\n\n\"I\'m a small fish in a big pond and it\'s really great to learn from everyone around me...I wasn\'t one of those that had computer science in their blood from the early days. But there was something I did like to do when I was young and that was build something with my hands..I wanted to be able to create things.\"\n\nAvni Shah really does create products, leading the team behind Google\'s web browser product, Chrome. As the Vice President of Product Management, she works directly on the development of the Chrome application and innovative initiatives, including showcasing Chrome working with Google\'s newest version of Android. Before joining the Chrome team, Avni worked on Google Search, Toolbar, and Maps.\n\nEducation:\nB.S. Computer Science & Electrical Engineering (MIT)\n\nWatch Avni\'s inspiring personal story:\nhttps://www.youtube.com/watch?v=Ysl0nfiJV6U"

                let attributedText4: NSMutableAttributedString = NSMutableAttributedString(string: quote4 as String)
                attributedText4.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 19, length: 314))
                let text4 = attributedText4
                
                let card4 = Card(name: "Avni Shah", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "CS5")!
                let subfield5 = "MOBILE DEVELOPMENT"
                let quote5 = "MOBILE GAME DEVELOPER\n\n\"When I was a kid, I was playing all these games like Tetris, Mario, Donkey Kong...that was my inspiration. Pay attention to people that are influencers in whatever genre of tech you are into so you learn from the best and work really hard.\"\n\nAmanda Wixted is a highly regarded mobile game developer, helping to develop mobile Pac-Man, FarmVille, Live Poker, Mafia Wars, and many more. In fact, there\'s a pretty good chance you have heard of one of her games since most have reached the Top 10 list on the Apple App Store! Amanda was the first mobile engineer for Zynga, a leading developer of the world\'s most popular social games, and the technology lead of its iPhone team. Recently, she works on apps to help kids learn to code through gaming at her own iOS development firm called Meteor Grove Software.\n\nEducation:\nB.S. Computer Science (University of Arizona)"
                
                let attributedText5: NSMutableAttributedString = NSMutableAttributedString(string: quote5 as String)
                attributedText5.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 22, length: 242))
                let text5 = attributedText5

                let card5 = Card(name: "Amanda Wixted", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "CS6")!
                let subfield6 = "INTERNET OF THINGS"
                let quote6 = "IoT ENTREPRENEUR\n\n\"It\'s not only about having the technology for monitoring things, it\'s about all of the changes the technology will make...In five years I envision the consolidation of wearables, like sport wristwatches, and intelligent thermostats that will help us cut our electricity bills...When we have enough sensor infrastructure in our cities, we will be able to really interact with all the services, for example, adjusting our clock alarm to real time traffic.\"\n\nAlicia Asin Perez is the co-founder and Chief Executive Office (CEO) of Libelium, a company that designs and manufactures hardware to implement wireless sensor networks. Alicia\'s passion and the goals of her company are to be part of the next technological revolution: the Internet of Things (IoT), a concept describing when everyday objects contain network connectivity for data transmission. Alicia sees this vision applying directly to developing smarter cities and IoT solutions. Libelium\'s sensor network technology and IoT in general could revolutionize transportation, energy, security, and environmental control!\n\nEducation:\nM.S. Computing Engineer (Universidad de Zaragoza)\n\nLearn more about Alicia and her company Libelium:\nhttp://www.libelium.com/alicia-asin/"
               
                let attributedText6: NSMutableAttributedString = NSMutableAttributedString(string: quote6 as String)
                attributedText6.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 17, length: 456))
                let text6 = attributedText6
                
                let card6 = Card(name: "Alicia Perez", photo: photo6, backgroundText: text6, subfield: subfield6)!

                cards += [card1, card2, card3, card4, card5, card6];

            case "Engineering":
                
                let photo1 = UIImage(named: "Eng1")!
                let subfield1 = "MECHANICAL ENGINEERING"
                let quote1 = "AUTOMOTIVE ENGINEER\n\n\"Only as I\'ve gained seniority and become more professionally successful, have I become more comfortable with letting my blond hair down, figuratively and literally. After designing diesel engine components, developing new turbocharger products, and managing a global supply chain of automotive suppliers, I now recognize that my body of work can speak for itself, more than my appearance.\"\n\nErin Sawyer oversees a range of responsibilities from supply chain to strategic sourcing to allow Tesla Motors, a large automotive and energy storage company, to become a leader in affordable electric cars. As a Global Strategic Sourcing Manager of Core Technologies at Tesla, Erin leverages her mechanical insight to evaluate innovative automotive technologies for a large scale manufacturing. In the past, she\'s worked directly on automatic transmissions and diesel engines for large companies.\n\nEducation:\nM.B.A. Management (Kellogg School of Management, Northwestern University)\nB.S. Mechanical Engineering (University of Michigan)\n\nCheck out more of Erin\'s story:\nhttp://fortune.com/2015/08/22/tesla-motors-ilooklikeanengineer/"
                
                let attributedText1: NSMutableAttributedString = NSMutableAttributedString(string: quote1 as String)
                attributedText1.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 20, length: 391))
                let text1 = attributedText1

                let card1 = Card(name: "Erin Brooks", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Eng2")!
                let subfield2 = "CIVIL ENGINEERING"
                let quote2 = "STRUCTURAL ENGINEER\n\n\"It was a huge challenge to design something beautiful that millions of people would admire, but which is also structurally sound...It\'s not everyday you get to redefine skylines...Seeing a building rise from the ground in concrete and steel is one of my favourite parts of a project. You\'ve only seen it on a computer screen or a 2D drawing, and suddenly it has become real. It\'s a fantastic feeling.\"\n\nBy 29, Roma Agrawal was already widely recognized for her pioneering work, being called the Young Structural Engineer of the Year by the Institution of Structural Engineers. Working for the structures team for a large property engineering firm, Roma and her team are responsible for the initial conceptual stage, design phase, and construction of building projects. Roma is part of making simple drawings on paper become a real buildings, ensuring safety and stability along the way. One of her most notable achievements is her work on The Shard, one of the most iconic, modern landmarks in London. Roma\'s work on The Shard\'s construction pioneered design and civil engineering capabilities!\n\nEducation:\nM.S. Structural Engineering (Imperial College London)\nB.S. Physics (University of Oxford)\n\nExplore her website:\nhttp://www.romatheengineer.com/"
                
                let attributedText2: NSMutableAttributedString = NSMutableAttributedString(string: quote2 as String)
                attributedText2.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 20, length: 403))
                let text2 = attributedText2
                
                let card2 = Card(name: "Roma Agrawal", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Eng3")!
                let subfield3 = "ELECTRICAL ENGINEERING"
                let quote3 = "ELECTRICAL SYSTEMS ENGINEER\n\n\"As the Internet and hand-held devices become an essential part of our everyday life, the resulting online mobile-social ecosystem has grown to be extremely complex and challenging to characterize or manage. Yet it plays an important role in shaping our social, political and economical landscapes. It is exciting to be part of the digital evolution and have an opportunity to design solutions that have societal impact.\"\n\nAs a Professor in Electrical Engineering at UC Davis, Chen-Nee Chuah has been widely recognized for her work in communications networks and wireless/mobile computing. She leads the the Robust and Ubiquitous Networking (RUBINET) Research Group at UC Davis, a group dedicated to analyze the properties of the Internet and its large scale network operation. Projects include understanding real Internet traffic and wireless components and investigating security and privacy issues, ultimately to better broaden knowledge of internet and mobile interactions.\n\nEducation:\nPh.D. Electrical Engineering and Computer Sciences (UC Berkeley)\nB.S. Electrical Engineering (Rutgers University)\n\nCheck out more of the projects by Chen-Nee\'s group:\nhttp://rubinet.ece.ucdavis.edu/"
                
                let attributedText3: NSMutableAttributedString = NSMutableAttributedString(string: quote3 as String)
                attributedText3.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 28, length: 422))
                let text3 = attributedText3
                
                let card3 = Card(name: "Chen-Nee Chuah", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Eng4")!
                let subfield4 = "AEROSPACE ENGINEERING"
                let quote4 = "SATELLITE ENGINEER\n\n\"I\'m learning something every day, and that\'s important to me. There\'s always a new problem to solve, and that\'s what keeps me going. I\'ll get a complex problem and initially think, \"I do not know where to start.\" But then I dive deeper and deeper into it, and realize, not only did I solve the problem, I\'ve also learned so much in the process.\"\n\nSabrina Thompson let her passion about innovation, space exploration, and positive impact guide her career where she is currently working at NASA Goddard Space Flight Center in the Navigation and Mission Design Branch. She uses her education to develop CubeSats at NASA which are tiny satellites used for space research. Her work involves designing the trajectories to keep these CubeSats in orbit. As the first member of her family with a college degree, Sabrina continues to achieve her dreams of applying her aerospace skillset to work on innovative spacecraft technologies!\n\nEducation:\nM.S. Aerospace Engineering (Georgia Institute of Technology)\n B.S. Mechanical Engineering (SUNY Stony Brook)\n\nHere Sabrina\'s inspirational story:\nhttp://women.nasa.gov/sabrina-thompson/"
                
                let attributedText4: NSMutableAttributedString = NSMutableAttributedString(string: quote4 as String)
                attributedText4.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 19, length: 347))
                let text4 = attributedText4
                
                let card4 = Card(name: "Sabrina Thompson", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "Eng5")!
                let subfield5 = "BIOMEDICAL ENGINEERING"
                let quote5 = "MEDICAL ROBOTICS ENGINEER\n\n\"A lot of things we do manually we have automated through robotics. Instead of using sutures, now we\'re using robotic staplers...Robotic surgery is elegant, artful and precise...I never could have predicted have the things that have come to play ten years ago, so it\'s hard to say where the future will be.\"\n\nPropa Ghosh became the first female medical director of robotic surgery in the United States, holding the position at Hunterdon Medical Center. Trained in robotics and minimally invasive surgery, specializing in kidney and prostate cancer, Propa sees the expansive potential for robotic surgery and has been on the front lines of implementing and seeing its success. Her innovative drive has led to improved cutting-edge surgical techniques, ultimately advancing the practice of medicine greatly!\n\nEducation:\nM.D. Medicine (Mount Sinai School of Medicine)\nB.S. Management Science, Biology (MIT)\n\nRead about one of Propa\'s initiatives at Hunterdon Medical Center:\nhttp://www.nj.com/hunterdon/index.ssf/2015/09/robot_takes_center_stage_at_hunterdon_medical_cent.html"

                let attributedText5: NSMutableAttributedString = NSMutableAttributedString(string: quote5 as String)
                attributedText5.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 26, length: 308))
                let text5 = attributedText5

                let card5 = Card(name: "Propa Ghosh", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "Eng6")!
                let subfield6 = "CHEMICAL ENGINEERING"
                let quote6 = "ENVIRONMENTAL ENGINEER\n\n\"When my sister was diagnosed with an aggressive form of leukemia at age 15, I began to focus a lot on the disease and what caused it, including environmental factors. These influences led me to chemical engineering, and ultimately, to an emphasis in environmental engineering...[We] test new, low-cost carbon capture technologies that can make potentially huge impacts on the future of energy generation.\"\n\nAs the Director of the National Carbon Capture Center, Roxann Laird is part of a team in pioneering and developing the most advanced technologies for energy generation. The National Carbon Capture Center operates for the U.S. Department of Energy, allowing Roxann to be part of directly impacting the way the U.S. generates energy and creating innovative methods to tackle environmental issues! Her responsibilities as part of the power industry include plant operations and management, technology testing, and process engineering.\n\nEducation:\nB.S. Chemical Engineering (Auburn University)"
                
                let attributedText6: NSMutableAttributedString = NSMutableAttributedString(string: quote6 as String)
                attributedText6.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 23, length: 407))
                let text6 = attributedText6
                
                let card6 = Card(name: "Roxann Laird", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Math":

                let photo1 = UIImage(named: "Math1")!
                let subfield1 = "THEORETICAL MATH"
                let quote1 = "MATHEMATICIAN\n\n\"I don't have any particular recipe. It is the reason why doing research is challenging as well as attractive. It is like being lost in a jungle and trying to use all the knowledge that you can gather to come up with some new tricks, and with some luck you might find a way out...It is fun – it's like solving a puzzle or connecting the dots in a detective case.\"\n\nIn 2014, Maryam Mizakhani became the first woman to receive the highest honor in the field of Mathematics, the Fields Medal, known as the \"Nobel Prize of Mathematics.\" But, it was not without years of dedication and ability to interpret the most complex and difficult problems with creativity and determination. Her beginning work focused on calculating the volume of hyperbolic surfaces, a problem that confused mathematicians for years. Her original and innovative approaches to geometrical problems as well as her understanding of diverse types of mathematics allowed her to become highly recognized in her field. Maryam\'s work has transformed not only the field of mathematics, but has a vast impact on physics and engineering as well!\n\nEducation:\nPh.D. Mathematics (Harvard)\nB.S. Mathematics (Sharif University of Technology)\n\nLearn more of Maryam\'s journey:\nhttp://news.stanford.edu/news/2014/august/fields-medal-mirzakhani-081214.html"
                
                let attributedText1: NSMutableAttributedString = NSMutableAttributedString(string: quote1 as String)
                attributedText1.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 14, length: 364))
                let text1 = attributedText1
                let card1 = Card(name: "Maryam Mirzakhani", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Math2")!
                let subfield2 = "MATHEMATICAL MODELING"
                let quote2 = "COMPUTATIONAL ASTRONOMER\n\n\"Nothing is more beautiful than a star or galaxy. If I could travel out there and find the answers, I would. In order to confirm the detection of gravitational waves, scientists need models for the anticipated gravitational waves coming from space.\"\n\nManuela Campanelli integrates mathematics and simulations to better understand the complexity of galaxies and the universe. As the Director of the Center for Computational Relativity and Gravitation at Rochester Institute of Technology, Manuela uses math to model real life motions of black holes and gravitational waves. She is renowned for her groundbreaking work in modeling a black hole evolving, orbiting, and colliding. In her research, she continually pushes the barriers for what mathematical modeling can explain, as her work looks at proving Einstein’s theory of general relativity using complex mathematical equations!\n\nEducation:\nPh.D. Theoretical Physics (University of Bern)\nB.S. Applied Mathematics (University of Perugia)\n\nRead about the incredible work that Manuela leads:\nhttps://www.rit.edu/showcase/index.php?id=66"
                
                let attributedText2: NSMutableAttributedString = NSMutableAttributedString(string: quote2 as String)
                attributedText2.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 25, length: 249))
                let text2 = attributedText2
                
                let card2 = Card(name: "Manuela Campanelli", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Math3")!
                let subfield3 = "DATA SCIENCE"
                let quote3 = "PREDICTIVE DATA SCIENTIST\n\n\"It\'s not just a technical field..It\'s extremely creative because you\'re thinking about how data might fit together, you\'re thinking about how you might create different signals from the data...Hopefully it means that the product is getting better and better for you and that...[i]t\'s helping us get content into the service that you will really enjoy.\"\n\nAs the Vice President of Science and Algorithms at Netflix, Caitlin Smallwood leads an advanced group of data scientists to develop insights on how to better improve the product. Using data and algorithm research, Caitlin and her team develop predictive modeling techniques to evaluate and analyze different changes to the product. Her work tackles interesting challenges like Netflix recommendation ability, movie/TV show demand, and marketing techniques. Her work helps create the overall design of the product and based on in depth data analysis, makes sure it\'s the best for users like you!\n\nEducation:\nM.S. Operations Research (Stanford University)\nB.S. Mathematics (College of William and Mary)\n\nWatch Caitlin talk about the role of data science at Netflix:\nhttps://www.youtube.com/watch?v=xOriwLUcTAg"
                
                let attributedText3: NSMutableAttributedString = NSMutableAttributedString(string: quote3 as String)
                attributedText3.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 26, length: 354))
                let text3 = attributedText3
                
                let card3 = Card(name: "Caitlin Smallwood", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Math4")!
                let subfield4 = "STATISTICS"
                let quote4 = "BIOSTATISTICIAN\n\n\"The number of statistical challenges facing regulators remains high, as does the importance of statistical thinking in the regulatory decision-making process. Statisticians [at the FDA] review hundreds of new drug and therapeutic biologic applications each year and advise sponsors on protocols numbering in the thousands.\"\n\nStatistics is key to drive important decisions and applies directly in Lisa Lavange’s field of biostatistics in approving drugs! As the Director of the Office of Biostatistics in the Office of Translational Sciences in the Center for Drug Evaluation and Research for the US Food and Drug Administration (FDA), Lisa plays a crucial role in making sure medication and drugs in the market are safe and effective. Her team of advanced statisticians develops and applies statistical methodology for drug regulation. Her previous work with statistics in private industry, working at a small biopharmaceutical company, and academia makes her so successful in her position.\n\nEducation:\nPh.D. Biostatistics (University of North Carolina)\nB.S. Mathematics (University of North Carolina)\n\nRead Lisa’s paper on the importance of statistics in regulatory decisions:\nhttp://dij.sagepub.com/content/48/1/10.abstract"
                
                let attributedText4: NSMutableAttributedString = NSMutableAttributedString(string: quote4 as String)
                attributedText4.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 16, length: 325))
                let text4 = attributedText4
                
                let card4 = Card(name: "Lisa LaVange", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                cards += [card1, card2, card3, card4];
            
            case "Medicine":
            
                let photo1 = UIImage(named: "Med1")!
                let subfield1 = "CARDIAC SURGERY"
                let quote1 = "CARDIOTHORACIC SURGEON\n\n\"I look and I act like a girl, but I\'m as tough as I need to be in the operating room...When people meet me, they definitely do a double take.The more people told me not to be a heart surgeon, the more I wanted it. It just made me stronger. I had to be twice as good to get half the credit.\"\n\nKathy Magliato\'s receival of UCLA Anderson School of Business Inspirational Alumni Award is more than well deserved. Kathy is one of very few female cardiothoracic surgeons in the world. Aside from performing extremely difficult heart and lung transplants as a surgeon, Kathy took her passion for promoting women\'s cardiac health and founded the Multidisciplinary Women\'s Health Center to address the cardiac needs of female patients. She works extensively to raise awareness of cardiovascular disease, the number one killer of women in the U.S., as President of the LA Board American Heart Association and as a book writer.\n\nEducation:\nM.B.A. Management (UCLA Anderson School of Business)\nM.D. Medicine (Case Western Reserve University)\nB.S. Biochemistry (Union College)\n\nCheck out Kathy\'s own website:\nhttp://www.kathymagliato.com/"
                
                let attributedText1: NSMutableAttributedString = NSMutableAttributedString(string: quote1 as String)
                attributedText1.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 23, length: 292))
                let text1 = attributedText1
                
                let card1 = Card(name: "Kathy Magliato", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Med2")!
                let subfield2 = "SPORTS MEDICINE"
                let quote2 = "ORTHOPEDIC SURGEON\n\n\"I was the little girl who had the baseball glove on, and the softball in her hand, and hats...I overcame [questions such as ‘Can you physically do it?\'] by not giving anybody room to question my ability or confidence... [What keeps me motivated is taking a patient with a problem] no one else wanted to fix, or no one else was willing to fix, and I am able to fix it.\"\n\nLeigh Ann Curl combines her skills as an orthopedic surgeon, treatment of injuries or disorders of the muscle and skeletal system, with her love of athletics. Her passion for sports started from a young age and led to her decision to pursue sports medicine where she fell in love with orthopedic surgery, a physically demanding and male-dominated speciality. Leigh went on to become the first woman to become the head team orthopedic surgeon in the National Football League (NFL). Appointed for the Baltimore Ravens, it is Leigh\'s job to help when any athlete gets hurt or seriously injured!\n\nEducation:\nM.D. Medicine (Johns Hopkins University School of Medicine)\nB.S. Biology (University of Connecticut)\n\nCheck out more of Leigh\'s story:\nhttps://www.nlm.nih.gov/changingthefaceofmedicine/physicians/biography_343.html"
                
                let attributedText2: NSMutableAttributedString = NSMutableAttributedString(string: quote2 as String)
                attributedText2.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 19, length: 370))
                let text2 = attributedText2
                
                let card2 = Card(name: "Leigh Curl", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Med3")!
                let subfield3 = "MEDICAL RESEARCH"
                let quote3 = "EYE RESEARCHER\n\n\"Sexism, racism, and relative poverty were the obstacles which I faced as a young girl growing up in Harlem. There were no women physicians I knew of and surgery was a male-dominated profession...My love of humanity and passion for helping others inspired me to become a physician...The ability to restore sight is the ultimate reward.\"\n\nPatricia Bath\'s innovative research emcompasses blindness prevention, treatment, and cure. Among many firsts, Patricia Bath was the first African American to complete a residency in ophthalmology, the study of eye diseases, and the first female faculty member in the Department of Ophthalmology at UCLA. Her extensive research particularly in cataracts, clouding of the eye lens, led to her invention of a new patented device and technique to remove cataracts-the laserphaco probe. The cutting-edge device uses laser technology to create a less painful and more precise treatment and is now used worldwide. Her invention was able to recover sight for individuals who had been blind for over 30 years!\n\nEducation:\nM.D. Medicine (Howard University College of Medicine)\nB.A. Chemistry (Hunter College)\n\nRead more of Patricia\'s pioneering journey:\n https://www.nlm.nih.gov/changingthefaceofmedicine/physicians/biography_26.html"
                
                let attributedText3: NSMutableAttributedString = NSMutableAttributedString(string: quote3 as String)
                attributedText3.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 15, length: 337))
                let text3 = attributedText3
                
                let card3 = Card(name: "Patricia Bath", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Med4")!
                let subfield4 = "ONCOLOGY"
                let quote4 = "PEDIATRIC CANCER SPECIALIST\n\n\"Nothing is more motivating than having a patient with brain cancer in front of you. It keeps you going back to the lab, to continue to brainstorm. My hope is that in the next 30 years immunotherapy will be part of our standard approach and it will further reduce the toxicities suffered by today\'s patients.\"\n\nAllison Martin followed a challenging field by deciding to specialize in pediatric brain cancer, one of the most complex and aggressive forms of cancer among children. As brain cancer treatment options are extremely limited, Allison works on the front lines in researching innovative methods. Her research in immunotherapy, treatment using the body\'s own immune system, to fight against brain tumors is still under experimental testing, but holds great promise. Her passion and continuous work in immunotherapy is both advancing the field and allowing for the possibilities of treatment methods for pediatric brain cancer!\n\nEducation:\nM.D. Medicine (Jefferson Medical College, Thomas Jefferson University)"
                
                let attributedText4: NSMutableAttributedString = NSMutableAttributedString(string: quote4 as String)
                attributedText4.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 28, length: 310))
                let text4 = attributedText4
                
                let card4 = Card(name: "Allison Martin", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "Med5")!
                let subfield5 = "PUBLIC HEALTH"
                let quote5 = "HEALTH OFFICIAL\n\n\"In two decades of medical service, my career has evolved from working at the individual patient level, to conducting and directing research, to designing and implementing national and global public health programs and initiatives in the U.S. Department of Health and Human Services.  I\'ve integrated and woven the perspectives...—science, communications and public health—into the fabric of my work including teaching the next generation of physicians.\"\n\nSusan Blumenthal has dedicated her life to improving the health of people globally, currently as the First Deputy Assistant Secretary for Women\'s Health and previously as the U.S. Assistant Surgeon General. She analyzes prevalent and emerging public health issues and addresses them with innovative solutions. In previous roles, she directed major research programs, stimulated support in scientific fields, and developed education campaigns on public health issues such as suicide, depression, and sleep disorders. In her government positions more recently, Susan broadened her impact by focusing on global health issues, disease prevention, and health promotion. Notably, Susan has been responsible for moving women\'s health issues to a top national priority by exposing the inequities in women\'s health.\n\nEducation:\nM.D. Medicine (University of Tennessee School of Medicine)\nM.P.A.. Public Administration (Harvard University)\n\nRead more about Susan\'s career journey:\nhttp://susan-blumenthal.org/about/biography/"

                let attributedText5: NSMutableAttributedString = NSMutableAttributedString(string: quote5 as String)
                attributedText5.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 16, length: 455))
                let text5 = attributedText5
                
                let card5 = Card(name: "Susan Blumenthal", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "Med6")!
                let subfield6 = "MEDICAL IMAGING"
                let quote6 = "MEDICAL IMAGING RESEARCHER\n\n\"This has a really bright future because of the need to have very targeted therapeutics...Antibodies give us the specificities that we\'re going to need in order to be able to truly target therapeutics. The work that we do is based on using antibodies...as targeted imaging agents in patients...I think this is going to help address some of the challenges of the dealing with cancer.\"\n\nAs a Professor in the Department of Molecular and Medical Pharmacology at UCLA, Anna Wu is a widely recognized leader in the field of medical and molecular cancer imaging. In depth imaging is needed to make informed and targeted therapy decisions for the patient and Anna\'s research focuses on just that. Her research harnesses the use of antibodies, proteins in the body that identify foreign targets, and Positron Emission Tomography (PET), nuclear imaging technique, to provide imaging that can help design treatment options accurate and more effective to the patient. In fact, her research is the foundation of the technology behind ImaginAb, an imaging company leveraging antibodies!\n\nEducation:\nPh.D. Molecular Biophysics and Biochemistry (Yale)\nB.A. Biochemical Sciences (Harvard)\n\nCheck out some of Anna\'s noteworthy publications:\nhttp://faculty.pharmacology.ucla.edu/institution/personnel?personnel_id=45665"
                
                let attributedText6: NSMutableAttributedString = NSMutableAttributedString(string: quote6 as String)
                attributedText6.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 27, length: 384))
                let text6 = attributedText6
                
                let card6 = Card(name: "Anna Wu", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Science":
                
                let photo1 = UIImage(named: "Sci1")!
                let subfield1 = "CHEMISTRY"
                let quote1 = "DISCOVERY CHEMIST\n\n\"My field of computational modeling may not always produce the correct answers, but it provides hypotheses which lead to new designs. Being able to apply this field in project-team settings with a common goal of delivering molecules for unmet needs is a wonderful opportunity.\"\n\nThink about all the people in the world with devastating diseases and conditions that rely on medication. Vickie and her team work directly in developing these new drugs to solve the world\'s toughest medical needs. As a Senior Scientist in Discovery Chemistry at Genentech, a leading biopharmaceutical company, Vickie uses computational chemistry, a branch of chemistry that utilizes computer simulations, to guide the design and discovery of small molecule drugs. Her innovative early-stage research has the potential to identify drugs to treat breast cancer!\n\nEducation:\nPh.D. Macromolecular and Cellular Structure and Chemistry (The Scripps Research Institute)\nB.S. Chemistry (Yale)\n\nCheck out some of Vickie\'s noteworthy publications:\nhttp://www.gene.com/scientists/our-scientists/vickie-tsui"
                
                let attributedText1: NSMutableAttributedString = NSMutableAttributedString(string: quote1 as String)
                attributedText1.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 18, length: 278))
                let text1 = attributedText1
                let card1 = Card(name: "Vickie Tsui", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "Sci2")!
                let subfield2 = "BIOLOGY"
                let quote2 = "DISEASE GENETICIST\n\n\"The impact that science has on the world around us is something I\'m enthralled with...I love the invention and the creation of research...it\'s all a creative process, and I think that\'s how I became interested in music, too. What links music and science for me is that they\'re two different kinds of invention.\"\n\nPardis Sabeti tackles the most infectious diseases in the world and is on the front lines when an outbreak strikes, ultimately saving lives and leading researchers to new vaccines. Her most recent case was sequencing the viral genome of Ebola, an extremely deadly disease that recently had an outbreak in West Africa, and studying how the disease was transmitted. Her experience in scanning the entire human genome at the Broad Institute, a prestigious biomedical and genomic research center, is applied to her dedication in understanding the pathogens that cause diseases like malaria and tuberculosis.\n\nEducation:\nM.D. Medicine (Harvard Medical School)\nPh.D. Biological Anthropology (University of Oxford)\nB.S. Biology (MIT)\n\nCheck out Pardis\' feature for TIME 100 Most Influential People:\nhttp://time.com/3822958/pardis-sabeti-2015-time-100/"
                
                let attributedText2: NSMutableAttributedString = NSMutableAttributedString(string: quote2 as String)
                attributedText2.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 19, length: 312))
                let text2 = attributedText2
                
                let card2 = Card(name: "Pardis Sabeti", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "Sci3")!
                let subfield3 = "PHYSICS"
                let quote3 = "PARTICLE PHYSICIST\n\n\"If you want to understand the field conceptually, it\'s almost child\'s play. All children are natural scientists. They are curious, and they want to take things apart to see how they work...We study the fundamental building blocks of matter from which everything is made, and the forces at work between them. And the equations that describe the building blocks and their interactions are simple and elegant.\"\n\nFabiola fell in love with arts and philosophy at a young age because she loved asking big question, but physics became her true passion by providing big answers. Aside from being named among the Top 100 most influential women by Guardian and Forbes Magazine, in January 2016, Fabiola became the first female Director-General of CERN, a top global research organization that operates the Large Hadron Collider (LHC), the world\'s biggest particle collider. As the most powerful accelerator, the LHC smashes atoms together at almost the speed of light to ultimately understand the universe on a tiny scale. Previously, she headed ATLAS, a team of more than 3,000 scientists that discovered the Higgs Boson, a basic particle that helps to understand the creation of mass in the universe!\n\nEducation:\n\nPh.D. Experimental Particle Physics (University of Milan)\n\nCheck out  Fabiola\'s feature in Forbes:\nhttp://www.forbes.com/profile/fabiola-gianotti/"
                
                let attributedText3: NSMutableAttributedString = NSMutableAttributedString(string: quote3 as String)
                attributedText3.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 19, length: 411))
                let text3 = attributedText3
                
                let card3 = Card(name: "Fabiola Gianotti", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "Sci4")!
                let subfield4 = "ENVIRONMENTAL SCIENCE"
                let quote4 = "CORAL REEF BIOLOGIST\n\n\"Most of the Caribbean\'s coral reefs are in bad shape, victims of overfishing, sewage and fertilizer pollution, disease, rising temperatures, and reckless coastal development. But corals are deeply important for humans everywhere, not least because they are a source of food, they protect shorelines, generate tourism revenue — and provide chemical diversity through which scientists are discovering new medicines...that\'s why [we] are focused on understanding how corals reproduce, and studying what we might do to help young corals build us the reefs of the future.\"\n\nKristen Marhaver works directly in combating the extensive damage against coral reefs due to pollution, overfishing, and a changing climate. As a scuba diver from the age of 15 and spending over 1,000 hours underwater, she grew up with a love of marine biology. Based in the Caribbean, Kristen and her colleagues study the habitat preferences, reproduction, and behavior of reef corals in an attempt to construct and restore the proper environment for growth. Her work in investigating the biodiversity of the coral reefs will allow scientists to better protect the very important as well as beautiful coral reefs! In fact, her team has been able to reintroduce lab-raised corals and breed them successfully in the Caribbean!\n\nEducation:\nPh.D. Marine Biology (Scripps Institute of Oceanography, UCSD)\nB.S. Applied Biology (Georgia Institute of Technology)\n\nRead about the unbelievable way Kristen is restoring our coral habitat:\nhttp://ideas.ted.com/a-day-in-the-life-of-baby-coral/"
                
                let attributedText4: NSMutableAttributedString = NSMutableAttributedString(string: quote4 as String)
                attributedText4.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 21, length: 569))
                let text4 = attributedText4
                
                let card4 = Card(name: "Kristen Marhaver", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "Sci5")!
                let subfield5 = "NEUROSCIENCE"
                let quote5 = "BEHAVIORAL NEUROSCIENTIST\n\n\"Understanding the human brain is a great and complex problem. To solve the brain\'s mysteries, you often have to break a problem down to a simpler form...We want to see the interconnected nerves that give rise to thoughts, actions, and emotions.\"\n\nCori Bargman has never been known to shy away from the complex. Tackling the most difficult questions and part of the body, the brain, Cori\'s lab at Rockefeller University focuses on the role of individual genes in brain development and function. Broadening our understanding of the human brain, her work uses the roundworm C. elegans as a model to map neural circuits and to investigate the role of individual genes on behavior. In fact, President Obama named her co-chair to the Brain Research Advancing Innovative Neurotechnologies Initiative, an endeavour that investigates the causes of brain conditions such as Alzheimer\'s, autism, and depression by understanding the connections between brain function and behavior.\n\nEducation:\nPh.D. Cancer Biology (MIT)\nB.S. Biochemistry (University of Georgia)\n\nRead about the amazing research at Cori\'s lab:\nhttp://www.rockefeller.edu/research/faculty/labheads/CoriBargmann/\u{23}content"

                let attributedText5: NSMutableAttributedString = NSMutableAttributedString(string: quote5 as String)
                attributedText5.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 26, length: 245))
                let text5 = attributedText5
                
                let card5 = Card(name: "Cori Bargmann", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "Sci6")!
                let subfield6 = "ASTRONOMY"
                let quote6 = "GALAXY ASTRONOMER\n\n\"...I\'m studying the evolution of massive stars a billion light years away...I like reminding people that \"silly\" questions are often the starting point for great science, and it\'s always fun to ignite some enthusiasm and curiosity in people about astronomy and how our universe works.\"\n\nEmily Levesque has a passion for the unknown and the unseen, discovering the mysteries behind our universe!  Listed as one of Business Insider\'s 50 Groundbreaking Scientists, Emily, along with her collaborators, discovered the three largest stars known in the universe! Using multi-wavelength observations and theoretical models from star-forming galaxies, her work pushes the frontiers of our understanding of galaxies. Her research at University of Washington focuses on understanding massive stars and using these stars to investigate galaxy formation, shedding light on the universe around us.\n\nEducation:\nPh.D. Astronomy (University of Hawaii)\nB.S. Physics (MIT)\n\nCheck out more of Emily\'s incredible research:\nhttp://www.emlevesque.com/research/"
                
                let attributedText6: NSMutableAttributedString = NSMutableAttributedString(string: quote6 as String)
                attributedText6.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 18, length: 286))
                let text6 = attributedText6
                
                let card6 = Card(name: "Emily Levesque", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            case "Technical Management":
                
                let photo1 = UIImage(named: "TM1")!
                let subfield1 = "ENTERPRISE TECHNOLOGY"
                let quote1 = "BUSINESS TECHNOLOGY EXECUTIVE\n\n\"[E]ngineering is about looking at desired value, actions and capabilities and translating them into discrete and solvable challenges and opportunities. Then, they need to be applied to software design disciplines to remove complexities. It is exciting and, as a career, very rewarding.\"\n\nAt the Walt Disney Company, Susan O\'Day is the Executive Vice President of Enterprise Technology and Chief Information Officer. She leads Disney Technology Solutions and Services, the team responsible for developing technology capabilities to accomplish business strategies and to maintain enterprise efficiency. Essentially, it is her responsibility to make sure the technology used throughout the business is working effectively and securely. By delivering technology and fostering collaborative innovation, Susan supports Disney in accomplishing its business goals!\n\nEducation:\nM.B.A. Management (The Mason School of Business, College of William and Mary)\nB.S. Mathematics (St. Lawrence University)"
                
                let attributedText1: NSMutableAttributedString = NSMutableAttributedString(string: quote1 as String)
                attributedText1.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 30, length: 288))
                let text1 = attributedText1
                let card1 = Card(name: "Susan O'Day", photo: photo1, backgroundText: text1, subfield: subfield1)!
                
                let photo2 = UIImage(named: "TM2")!
                let subfield2 = "INFORMATION TECHNOLOGY"
                let quote2 = "HEALTH IT EXECUTIVE\n\n\"I started Cognosante above my garage with a blind faith and crazy passion that somehow I can make some contribution to help this country\'s healthcare system with technology, information technology. We are dedicated to applying our knowledge and innovation to help produce a healthier population.\"\n\nMichele Kang\'s passion for both information technology, the use of computer systems to store and retrieve data, and healthcare led to her becoming the founder and Chief Executive Officer (CEO) of Cognosante, a health information technology consulting firm. She founded the company to apply information knowledge to create a better healthcare environment by offering insights to different organizations. Her team works directly with public agencies and other notable companies in designing, developing, implementing, and operating effective methods to collect, organize, and store data.\n\nEducation:\nM.B.A. Management (Yale School of Management)\nB.A. Economics (University of Chicago)\n\nCheck out Michele\'s company Cognosante:\nhttp://www.cognosante.com/"
                
                let attributedText2: NSMutableAttributedString = NSMutableAttributedString(string: quote2 as String)
                attributedText2.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 20, length: 298))
                let text2 = attributedText2
                
                let card2 = Card(name: "Michele Kang", photo: photo2, backgroundText: text2, subfield: subfield2)!
                
                let photo3 = UIImage(named: "TM3")!
                let subfield3 = "ENGINEERING MANAGEMENT"
                let quote3 = "ENGINEERING MANAGER\n\n\"I love math, but I also love art. Technology is both...It\'s there to just help you achieve things. ...I love that we\'re making a thing that makes other people\'s lives easier. We take away all the complexities of building…[it] enables you to create anything you want.\"\n\nEven if you\'ve never heard of Dona Sarkar, you\'ve probably used something she\'s built in Windows, an operating system used by over a billion people. She helped work on tools such as search box, autoplay, bluetooth, and blu-ray. Working behind the scenes to create components for Microsoft, a leading technology company, allows Dona and her team to create products that are widely used. She recently became the leader of the Windows Insider Program, a global program where members give feedback on early versions of Microsoft products. She combines her skills in engineering and technology to manage a large team that ultimately contributes in building a better product.\n\nEducation:\nB.S. Computer Science (University of Michigan)\n\nRead Microsoft\'s feature on Dona:\nhttps://news.microsoft.com/stories/people/dona-sarkar.html"
                
                let attributedText3: NSMutableAttributedString = NSMutableAttributedString(string: quote3 as String)
                attributedText3.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 20, length: 269))
                let text3 = attributedText3
                
                let card3 = Card(name: "Dona Sarkar", photo: photo3, backgroundText: text3, subfield: subfield3)!
                
                let photo4 = UIImage(named: "TM4")!
                let subfield4 = "PRODUCT MANAGEMENT"
                let quote4 = "TECHNICAL PRODUCT MANAGER\n\n\"I used to enjoy following an instruction set...Now what I enjoy most is the creative process that comes with building things out of nothing.\"\n\nFormer director of product at Twitter and current Vice President of Slack, a growing messaging company, April Underwood is widely recognized for her creativity in the field. She held the technical product manager role for the first versions of the Tweet and Follow buttons, overseeing the design and implementation phases. At Slack, she is responsible for deciding what technical features to introduce next. Integrating engineering technical skills and business development, April is able to successfully lead teams to create real products that are widely used and effective!\n\nEducation:\nM.B.A. Management (Walter A. Haas School of Business, UC Berkeley)\nB.A. Management Information Systems (University of Texas Austin)\n\nFollow April on Twitter:\nhttps://twitter.com/aunder?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
                
                let attributedText4: NSMutableAttributedString = NSMutableAttributedString(string: quote4 as String)
                attributedText4.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 26, length: 143))
                let text4 = attributedText4
                
                let card4 = Card(name: "April Underwood", photo: photo4, backgroundText: text4, subfield: subfield4)!
                
                let photo5 = UIImage(named: "TM5")!
                let subfield5 = "DIGITAL DESIGN"
                let quote5 = "USER EXPERIENCE DESIGNER\n\n\"What fascinates me about languages is their structure and logic on the one hand and the fine details and nuances of expression on the other...The same is true for design. Good design needs a sound basis (...clean code, meaningful content, …), details and nuances are important and visual style can give it personality and make it stand out.\"\n\nEva-Lotta Lam started out as a graphic designer, but over the years has focused more on digital design, working on developing web sites and apps. As a user experience designer, she enhances usability, accessibility, and interaction satisfaction for the user and the product by using her technical skills to alter the web site or app. Her experience includes redesigning Google Play for Android, adding design elements to Skype For Business, and creating visual specifications for Yahoo. Working in digital design, Eva-Lotta continually applies her technical expertise to build and create visual designs used for many companies\' products.\n\nEducation:\nDiplom Designer (Koeln International School of Design)\n\nCheck out some of Eva-Lotta\'s cool work:\nhttp://www.evalotta.net/"

                let attributedText5: NSMutableAttributedString = NSMutableAttributedString(string: quote5 as String)
                attributedText5.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 25, length: 344))
                let text5 = attributedText5

                let card5 = Card(name: "Eva-Lotta Lam", photo: photo5, backgroundText: text5, subfield: subfield5)!
                
                let photo6 = UIImage(named: "TM6")!
                let subfield6 = "NONPROFIT ENTREPRENUERSHIP"
                let quote6 = "TECH ENTREPRENEUR\n\n\"It dawned on me that the charity model is destructive, since it often involves short-term stopgaps that create a handout mentality. Giving stuff away is always patronizing, it\'s much better to help people be able to buy things themselves.\"\n\nLeila Janah uses technology in a very inspiring way: to end global poverty by giving work to people in need. Founded by Leila, Samasource is a nonprofit providing third world countries with digital jobs that pay a living wage. More recently, Leila started Samahope, the first crowdfunding site to raise money for people in underserved communities who need surgeries. She\'s been recognized for her creative ability to integrate positive social impact and modern technology, as the recipient for the World Technology Award for Social Entrepreneurship and as One of Fast Company\'s Most innovative Women in Technology.\n\nEducation:\nB.A. Development Studies (Harvard)\nCalifornia Academy of Mathematics and Science\n\nLearn more about the amazing work Leila does:\nhttp://www.leilajanah.com/"
                
                let attributedText6: NSMutableAttributedString = NSMutableAttributedString(string: quote6 as String)
                attributedText6.addAttributes([NSFontAttributeName: UIFont.boldSystemFontOfSize(14), NSForegroundColorAttributeName: UIColor(red: 29/255, green: 74/255, blue: 121/255, alpha: 1.0)], range: NSRange(location: 18, length: 241))
                let text6 = attributedText6
                
                let card6 = Card(name: "Leila Janah", photo: photo6, backgroundText: text6, subfield: subfield6)!
                
                cards += [card1, card2, card3, card4, card5, card6];
            
            default:
                fatalError("Invalid Category Name")
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cards.count
    }

    // Sets up a particular woman's profile card
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

    // MARK: - Navigation

    // Preparation before navigation
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
