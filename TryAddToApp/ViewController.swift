import UIKit
import Flutter

class ViewController: UIViewController {
        
    @IBAction func buttonTapped(sender: UIButton) {
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine
        let flutterViewController = FlutterViewController(
            engine: flutterEngine, nibName: nil, bundle: nil
        )
        flutterViewController.modalPresentationStyle = .fullScreen
        let methodChannel = FlutterMethodChannel(
            name: "com.tfandkusu.tryaddtoapp/call",
            binaryMessenger: flutterViewController.binaryMessenger
        )
        methodChannel.setMethodCallHandler({ (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if(call.method == "callNativePage") {
                let secondViewController = SecondViewController()
                flutterViewController.present(secondViewController, animated: true)
                result(1);
            }else if(call.method == "back") {
                flutterViewController.dismiss(animated: true)
                flutterEngine.viewController = nil
                result(1);
            }
        })
        present(flutterViewController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

