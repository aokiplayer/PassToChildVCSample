import UIKit

class SecondViewController: UIViewController {

    // When value is set, it will change label's text.
    var selectedNumber: Int! {
        didSet {
            monthLabel?.text = "\(selectedNumber!)月"
        }
    }

    @IBOutlet weak var monthLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
