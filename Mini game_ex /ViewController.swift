
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circleOne: MyCircleCustomView!
    
    @IBOutlet weak var circleTwo: CircleButton!
    
    @IBOutlet weak var circleThree: MyCircleCustomView!
    
    @IBOutlet weak var circleFour: CircleButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        

        
    }
   
    @IBAction func panActionOne(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
           
               guard let gestureView = gesture.view else {
                   return
               }
               
               gestureView.center = CGPoint (
                   x: gestureView.center.x + gestureTranslation.x,
                   y: gestureView.center.y + gestureTranslation.y)
               
               gesture.setTranslation (.zero, in: view)
               
               guard gesture.state == .ended else {
                   return
               }
               print ("First circle moved")
        
        let circleOneFrame = circleOne.frame
        let circleThreeFrame = circleThree.frame
           
        for value in Int(circleThreeFrame.minY)...Int(circleThreeFrame.maxY) {
               if Int(circleOneFrame.origin.y) == value {
                   circleOne.isHidden = true
               }
               
               }
    }


    
    @IBAction func panActionTwo(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
           
               guard let gestureView = gesture.view else {
                   return
               }
               
               gestureView.center = CGPoint (
                   x: gestureView.center.x + gestureTranslation.x,
                   y: gestureView.center.y + gestureTranslation.y)
               
               gesture.setTranslation (.zero, in: view)
               
               guard gesture.state == .ended else {
                   return
               }
               print ("Second circle moved")
               
               }

    
    
    @IBAction func panActionThree(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
           
               guard let gestureView = gesture.view else {
                   return
               }
               
               gestureView.center = CGPoint (
                   x: gestureView.center.x + gestureTranslation.x,
                   y: gestureView.center.y + gestureTranslation.y)
               
               gesture.setTranslation (.zero, in: view)
               
               guard gesture.state == .ended else {
                   return
               }
               print ("Third circle moved")
               
    }
    
    
    @IBAction func panActionFour(_ gesture: UIPanGestureRecognizer) {
        let gestureTranslation = gesture.translation(in: view)
           
               guard let gestureView = gesture.view else {
                   return
               }
               
               gestureView.center = CGPoint (
                   x: gestureView.center.x + gestureTranslation.x,
                   y: gestureView.center.y + gestureTranslation.y)
               
               gesture.setTranslation (.zero, in: view)
               
               guard gesture.state == .ended else {
                   return
               }
               print ("Four circle moved")
        
        let circleTwoFrame = circleTwo.frame
        let circleFourFrame = circleFour.frame
        
        for value in Int(circleFourFrame.minY)...Int(circleFourFrame.maxY) {
               if Int(circleTwoFrame.origin.y) == value {
        
        let circleTwoX = circleTwo.frame.minX
        let circleTwoY = circleTwo.frame.minY
        let circleTwoWidth = circleTwo.frame.width
        let circleTwoHeight = circleTwo.frame.height
        
        circleTwo.frame = CGRect (x: circleTwoX, y: circleTwoY, width: circleTwoWidth + 50, height: circleTwoHeight + 50)
        
                circleTwo.backgroundColor = .green
               }
    }
    
}

}
