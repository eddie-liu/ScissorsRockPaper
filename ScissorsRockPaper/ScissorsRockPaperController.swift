//
//  ScissorsRockPaperController.swift
//  ScissorsRockPaper
//
//  Created by 劉淞煒 on 2017/12/25.
//  Copyright © 2017年 EddieLiu. All rights reserved.
//

import UIKit
import GameplayKit

class ScissorsRockPaperController: UIViewController {
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func gameBuggon(_ sender: UIButton) {
        let scissorsRockPaperArray = [1,2,3]
        let randomDistribution = GKRandomDistribution(lowestValue: 0, highestValue: 2)
        let computerSelection = scissorsRockPaperArray[randomDistribution.nextInt()]
        computerImage.image = UIImage(named: String(computerSelection))
        if sender.tag == computerSelection {
            resultLabel.text = "平手"
        }
        else if ((sender.tag == 1 && computerSelection == 3) || (sender.tag == 2 && computerSelection == 1) || (sender.tag == 3 && computerSelection == 2)) {
            resultLabel.text = "你贏了"
        }
        else {
            resultLabel.text = "你輸了"
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
