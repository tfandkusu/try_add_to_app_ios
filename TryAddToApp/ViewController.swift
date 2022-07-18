import UIKit
import Flutter

class ViewController: UIViewController {
        
    @IBAction func buttonTapped(sender: UIButton) {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(
            engine: flutterEngine, nibName: nil, bundle: nil
        )
        // flutterViewController.modalPresentationStyle = .fullScreen
        present(flutterViewController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

