import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        print(sender.currentTitle)
        sender.alpha = 0.5
        playSound(keyNote: sender.currentTitle!)

        //DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
           // sender.alpha = 1.0
        //}
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){ sender.alpha = 1.0
        }
        
    }
    
    func playSound(keyNote:String ) {
        let url = Bundle.main.url(forResource: "\(keyNote)", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    
}
