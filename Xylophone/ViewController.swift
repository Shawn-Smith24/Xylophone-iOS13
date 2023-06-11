import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
      
        // Change the opacity of the button temporarily
         sender.alpha = 0.5 // Set the desired opacity value
         
         // Define the duration of the temporary opacity change
         let duration: TimeInterval = 1.0 // Adjust the duration as needed
         
         // Create an animation block
         UIView.animate(withDuration: duration) {
             // Set the final opacity value to return to normal
             sender.alpha = 1.0 // Set the desired normal opacity value
         }
        playSound(soundName: sender.currentTitle!)
      
        
    }
    
    func playSound(soundName: String) {
        
        
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    
    }
}
